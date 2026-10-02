.class final Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;,
        Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;,
        Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;,
        Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;,
        Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;,
        Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;,
        Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field protected static final FLAG_DOMAIN_PRESENT:I = 0x1000

.field protected static final FLAG_REQUEST_128BIT_KEY_EXCH:I = 0x20000000

.field protected static final FLAG_REQUEST_56BIT_ENCRYPTION:I = -0x80000000

.field protected static final FLAG_REQUEST_ALWAYS_SIGN:I = 0x8000

.field protected static final FLAG_REQUEST_EXPLICIT_KEY_EXCH:I = 0x40000000

.field protected static final FLAG_REQUEST_LAN_MANAGER_KEY:I = 0x80

.field protected static final FLAG_REQUEST_NTLM2_SESSION:I = 0x80000

.field protected static final FLAG_REQUEST_NTLMv1:I = 0x200

.field protected static final FLAG_REQUEST_SEAL:I = 0x20

.field protected static final FLAG_REQUEST_SIGN:I = 0x10

.field protected static final FLAG_REQUEST_TARGET:I = 0x4

.field protected static final FLAG_REQUEST_UNICODE_ENCODING:I = 0x1

.field protected static final FLAG_REQUEST_VERSION:I = 0x2000000

.field protected static final FLAG_TARGETINFO_PRESENT:I = 0x800000

.field protected static final FLAG_WORKSTATION_PRESENT:I = 0x2000

.field private static final RND_GEN:Ljava/security/SecureRandom;

.field private static final SIGNATURE:[B

.field private static final TYPE_1_MESSAGE:Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;

.field private static final UNICODE_LITTLE_UNMARKED:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 55
    const-string v0, "UnicodeLittleUnmarked"

    invoke-static {v0}, Lcz/msebera/android/httpclient/util/CharsetUtils;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->UNICODE_LITTLE_UNMARKED:Ljava/nio/charset/Charset;

    .line 57
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 85
    :try_start_c
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    const/4 v0, 0x0

    .line 88
    :goto_14
    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    .line 95
    const-string v0, "NTLMSSP"

    sget-object v1, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 96
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    sput-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->SIGNATURE:[B

    .line 97
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    array-length v0, v0

    aput-byte v3, v1, v0

    .line 101
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->TYPE_1_MESSAGE:Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static F(III)I
    .registers 3

    and-int/2addr p1, p0

    not-int p0, p0

    and-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0
.end method

.method static G(III)I
    .registers 4

    or-int v0, p1, p2

    and-int/2addr p0, v0

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method static H(III)I
    .registers 3

    xor-int/2addr p0, p1

    xor-int/2addr p0, p2

    return p0
.end method

.method static RC4([B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 538
    const-string v0, "RC4"

    :try_start_2
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 539
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 540
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 542
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic access$000()[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 52
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->makeRandomChallenge()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 52
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->makeSecondaryKey()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Ljava/nio/charset/Charset;
    .registers 1

    .line 52
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$1100()[B
    .registers 1

    .line 52
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->SIGNATURE:[B

    return-object v0
.end method

.method static synthetic access$1200([BI)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 52
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->readUShort([BI)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300([BI)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 52
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->readULong([BI)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400([BI)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 52
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->readSecurityBuffer([BI)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500()Ljava/nio/charset/Charset;
    .registers 1

    .line 52
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->UNICODE_LITTLE_UNMARKED:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$1600(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 52
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->convertHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 52
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->convertDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->lmHash(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300([B[B)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 52
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->lmResponse([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->ntlmHash(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 52
    invoke-static {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->lmv2Hash(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 52
    invoke-static {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700([B[B[B)[B
    .registers 3

    .line 52
    invoke-static {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->createBlob([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800([B[B[B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 52
    invoke-static {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->lmv2Response([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900([BI)Ljava/security/Key;
    .registers 2

    .line 52
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object p0

    return-object p0
.end method

.method private static convertDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 197
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->stripDotSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static convertHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 192
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->stripDotSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createBlob([B[B[B)[B
    .registers 10

    const/4 v0, 0x4

    .line 736
    new-array v1, v0, [B

    fill-array-data v1, :array_42

    .line 737
    new-array v2, v0, [B

    fill-array-data v2, :array_48

    .line 738
    new-array v3, v0, [B

    fill-array-data v3, :array_4e

    .line 739
    new-array v4, v0, [B

    fill-array-data v4, :array_54

    .line 740
    array-length v5, p2

    add-int/lit8 v5, v5, 0x14

    array-length v6, p1

    add-int/2addr v5, v6

    add-int/2addr v5, v0

    new-array v5, v5, [B

    const/4 v6, 0x0

    .line 743
    invoke-static {v1, v6, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    invoke-static {v2, v6, v5, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    array-length v1, p2

    const/16 v2, 0x8

    invoke-static {p2, v6, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 748
    array-length p2, p2

    add-int v1, v2, p2

    .line 749
    invoke-static {p0, v6, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p0, p2, 0x10

    .line 751
    invoke-static {v3, v6, v5, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x14

    .line 753
    array-length p0, p1

    invoke-static {p1, v6, v5, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    array-length p0, p1

    add-int/2addr p2, p0

    .line 755
    invoke-static {v4, v6, v5, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    nop

    :array_42
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_48
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_54
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static createDESKey([BI)Ljava/security/Key;
    .registers 19

    const/4 v0, 0x7

    .line 773
    new-array v1, v0, [B

    const/4 v2, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    .line 774
    invoke-static {v3, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 776
    aget-byte v3, v1, v2

    shl-int/lit8 v4, v3, 0x7

    const/4 v5, 0x1

    .line 777
    aget-byte v6, v1, v5

    and-int/lit16 v7, v6, 0xff

    ushr-int/2addr v7, v5

    or-int/2addr v4, v7

    int-to-byte v4, v4

    const/4 v7, 0x6

    shl-int/2addr v6, v7

    const/4 v8, 0x2

    .line 778
    aget-byte v9, v1, v8

    and-int/lit16 v10, v9, 0xff

    ushr-int/2addr v10, v8

    or-int/2addr v6, v10

    int-to-byte v6, v6

    const/4 v10, 0x5

    shl-int/2addr v9, v10

    const/4 v11, 0x3

    .line 779
    aget-byte v12, v1, v11

    and-int/lit16 v13, v12, 0xff

    ushr-int/2addr v13, v11

    or-int/2addr v9, v13

    int-to-byte v9, v9

    const/4 v13, 0x4

    shl-int/2addr v12, v13

    .line 780
    aget-byte v14, v1, v13

    and-int/lit16 v15, v14, 0xff

    ushr-int/2addr v15, v13

    or-int/2addr v12, v15

    int-to-byte v12, v12

    shl-int/2addr v14, v11

    .line 781
    aget-byte v15, v1, v10

    move/from16 v16, v0

    and-int/lit16 v0, v15, 0xff

    ushr-int/2addr v0, v10

    or-int/2addr v0, v14

    int-to-byte v0, v0

    shl-int/lit8 v14, v15, 0x2

    .line 782
    aget-byte v1, v1, v7

    and-int/lit16 v15, v1, 0xff

    ushr-int/2addr v15, v7

    or-int/2addr v14, v15

    int-to-byte v14, v14

    shl-int/2addr v1, v5

    int-to-byte v1, v1

    const/16 v15, 0x8

    .line 783
    new-array v15, v15, [B

    aput-byte v3, v15, v2

    aput-byte v4, v15, v5

    aput-byte v6, v15, v8

    aput-byte v9, v15, v11

    aput-byte v12, v15, v13

    aput-byte v0, v15, v10

    aput-byte v14, v15, v7

    aput-byte v1, v15, v16

    .line 784
    invoke-static {v15}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->oddParity([B)V

    .line 785
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "DES"

    invoke-direct {v0, v15, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method static getResponseFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    if-eqz p0, :cond_2d

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_2d

    .line 127
    :cond_f
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->getChallenge()[B

    move-result-object v5

    .line 129
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->getFlags()I

    move-result v6

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->getTargetInfo()[B

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 128
    invoke-static/range {v1 .. v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    :goto_2d
    move-object v3, p3

    move-object v4, p4

    .line 125
    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 148
    sget-object p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->TYPE_1_MESSAGE:Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->getResponse()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)Ljava/lang/String;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 174
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;

    move-object v3, p0

    move-object v4, p1

    move-object v2, p2

    move-object v1, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V

    .line 175
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->getResponse()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static hmacMD5([B[B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 529
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 530
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 531
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B

    move-result-object p0

    return-object p0
.end method

.method private static lmHash(Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 584
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 585
    array-length v0, p0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 586
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 587
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object p0

    const/4 v0, 0x7

    .line 589
    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object v0

    .line 590
    const-string v1, "KGS!@#$%"

    sget-object v3, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 591
    const-string v3, "DES/ECB/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    .line 592
    invoke-virtual {v3, v4, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 593
    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 594
    invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 595
    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/16 v1, 0x10

    .line 596
    new-array v1, v1, [B

    const/16 v3, 0x8

    .line 597
    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    invoke-static {v0, v2, v1, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    return-object v1

    :catch_4c
    move-exception p0

    .line 601
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static lmResponse([B[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    const/16 v0, 0x15

    .line 676
    :try_start_2
    new-array v0, v0, [B

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 677
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object p0

    const/4 v3, 0x7

    .line 679
    invoke-static {v0, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object v3

    const/16 v4, 0xe

    .line 680
    invoke-static {v0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->createDESKey([BI)Ljava/security/Key;

    move-result-object v0

    .line 681
    const-string v4, "DES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x1

    .line 682
    invoke-virtual {v4, v5, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 683
    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 684
    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 685
    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 686
    invoke-virtual {v4, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 687
    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/16 v0, 0x18

    .line 688
    new-array v0, v0, [B

    const/16 v4, 0x8

    .line 689
    invoke-static {p0, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 690
    invoke-static {v3, v2, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 691
    invoke-static {p1, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_45

    return-object v0

    :catch_45
    move-exception p0

    .line 694
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static lmv2Hash(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 632
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->UNICODE_LITTLE_UNMARKED:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_2a

    .line 635
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;

    invoke-direct {v1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 637
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    if-eqz p0, :cond_25

    .line 639
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 641
    :cond_25
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B

    move-result-object p0

    return-object p0

    .line 633
    :cond_2a
    new-instance p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string p1, "Unicode not supported"

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static lmv2Response([B[B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 714
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 715
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 716
    invoke-virtual {v0, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 717
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B

    move-result-object p0

    .line 718
    array-length p1, p0

    array-length v0, p2

    add-int/2addr p1, v0

    new-array p1, p1, [B

    .line 719
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 720
    array-length p0, p0

    array-length v0, p2

    invoke-static {p2, v1, p1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static makeRandomChallenge()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 229
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    if-eqz v0, :cond_11

    const/16 v1, 0x8

    .line 232
    new-array v1, v1, [B

    .line 233
    monitor-enter v0

    .line 234
    :try_start_9
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 235
    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    throw v1

    .line 230
    :cond_11
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string v1, "Random generator not available"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static makeSecondaryKey()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 241
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->RND_GEN:Ljava/security/SecureRandom;

    if-eqz v0, :cond_11

    const/16 v1, 0x10

    .line 244
    new-array v1, v1, [B

    .line 245
    monitor-enter v0

    .line 246
    :try_start_9
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 247
    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    throw v1

    .line 242
    :cond_11
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string v1, "Random generator not available"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static ntlm2SessionResponse([B[B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 557
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 558
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 559
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 560
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/16 p2, 0x8

    .line 562
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 563
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->lmResponse([B[B)[B

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    .line 566
    instance-of p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    if-eqz p1, :cond_25

    .line 567
    check-cast p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    throw p0

    .line 569
    :cond_25
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static ntlmHash(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 615
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->UNICODE_LITTLE_UNMARKED:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_15

    .line 618
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 619
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;-><init>()V

    .line 620
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->update([B)V

    .line 621
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->getOutput()[B

    move-result-object p0

    return-object p0

    .line 616
    :cond_15
    new-instance p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string v0, "Unicode not supported"

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 652
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->UNICODE_LITTLE_UNMARKED:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_24

    .line 655
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;

    invoke-direct {v1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 657
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    if-eqz p0, :cond_1f

    .line 659
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    .line 661
    :cond_1f
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B

    move-result-object p0

    return-object p0

    .line 653
    :cond_24
    new-instance p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string p1, "Unicode not supported"

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static oddParity([B)V
    .registers 5

    const/4 v0, 0x0

    .line 795
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2c

    .line 796
    aget-byte v1, p0, v0

    ushr-int/lit8 v2, v1, 0x7

    ushr-int/lit8 v3, v1, 0x6

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x4

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x2

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x1

    xor-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_24

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    .line 800
    aput-byte v1, p0, v0

    goto :goto_29

    :cond_24
    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    .line 802
    aput-byte v1, p0, v0

    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2c
    return-void
.end method

.method private static readSecurityBuffer([BI)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 216
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->readUShort([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    .line 217
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->readULong([BI)I

    move-result p1

    .line 218
    array-length v1, p0

    add-int v2, p1, v0

    if-lt v1, v2, :cond_16

    .line 222
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 223
    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 219
    :cond_16
    new-instance p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string p1, "NTLM authentication - buffer too small for data item"

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readULong([BI)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 201
    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_25

    .line 204
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0

    .line 202
    :cond_25
    new-instance p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string p1, "NTLM authentication - buffer too small for DWORD"

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readUShort([BI)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 209
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-lt v0, v1, :cond_13

    .line 212
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0

    .line 210
    :cond_13
    new-instance p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string p1, "NTLM authentication - buffer too small for WORD"

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static rotintlft(II)I
    .registers 3

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method private static stripDotSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 183
    :cond_4
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_12
    return-object p0
.end method

.method static writeULong([BII)V
    .registers 5

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 1367
    aput-byte v0, p0, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1368
    aput-byte v1, p0, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1369
    aput-byte v1, p0, v0

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1370
    aput-byte p1, p0, p2

    return-void
.end method


# virtual methods
.method public generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 1628
    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 1638
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;

    invoke-direct {v0, p5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;-><init>(Ljava/lang/String;)V

    .line 1644
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->getChallenge()[B

    move-result-object v5

    .line 1645
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->getFlags()I

    move-result v6

    .line 1646
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->getTarget()Ljava/lang/String;

    move-result-object v7

    .line 1647
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->getTargetInfo()[B

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v3, p4

    .line 1639
    invoke-static/range {v1 .. v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
