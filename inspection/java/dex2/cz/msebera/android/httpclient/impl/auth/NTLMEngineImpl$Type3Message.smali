.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;
.super Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type3Message"
.end annotation


# instance fields
.field protected domainBytes:[B

.field protected hostBytes:[B

.field protected lmResp:[B

.field protected ntResp:[B

.field protected sessionKey:[B

.field protected type2Flags:I

.field protected userBytes:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 1168
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    .line 1170
    iput p6, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    .line 1173
    # invokes: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->convertHost(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1175
    # invokes: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->convertDomain(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1178
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)V

    const/high16 p1, 0x800000

    and-int/2addr p1, p6

    if-eqz p1, :cond_3a

    if-eqz v6, :cond_3a

    if-eqz v5, :cond_3a

    .line 1189
    :try_start_20
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2Response()[B

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 1190
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLMv2Response()[B

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 p1, p6, 0x80

    if-eqz p1, :cond_35

    .line 1192
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object p1

    goto :goto_8b

    .line 1194
    :cond_35
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2UserSessionKey()[B

    move-result-object p1

    goto :goto_8b

    :cond_3a
    const/high16 p1, 0x80000

    and-int/2addr p1, p6

    if-eqz p1, :cond_59

    .line 1200
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponse()[B

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 1201
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLM2SessionResponse()[B

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 p1, p6, 0x80

    if-eqz p1, :cond_54

    .line 1203
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object p1

    goto :goto_8b

    .line 1205
    :cond_54
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponseUserSessionKey()[B

    move-result-object p1

    goto :goto_8b

    .line 1208
    :cond_59
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMResponse()[B

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 1209
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 p1, p6, 0x80

    if-eqz p1, :cond_6e

    .line 1211
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object p1

    goto :goto_8b

    .line 1213
    :cond_6e
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMUserSessionKey()[B

    move-result-object p1
    :try_end_72
    .catch Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException; {:try_start_20 .. :try_end_72} :catch_73

    goto :goto_8b

    :catch_73
    const/4 p1, 0x0

    .line 1220
    new-array p1, p1, [B

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 1221
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 p1, p6, 0x80

    if-eqz p1, :cond_87

    .line 1223
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object p1

    goto :goto_8b

    .line 1225
    :cond_87
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLMUserSessionKey()[B

    move-result-object p1

    :goto_8b
    and-int/lit8 p3, p6, 0x10

    const/4 p4, 0x0

    if-eqz p3, :cond_a3

    const/high16 p3, 0x40000000    # 2.0f

    and-int/2addr p3, p6

    if-eqz p3, :cond_a0

    .line 1231
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getSecondaryKey()[B

    move-result-object p3

    invoke-static {p3, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->RC4([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    goto :goto_a5

    .line 1233
    :cond_a0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    goto :goto_a5

    .line 1236
    :cond_a3
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    .line 1238
    :goto_a5
    # getter for: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->UNICODE_LITTLE_UNMARKED:Ljava/nio/charset/Charset;
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1500()Ljava/nio/charset/Charset;

    move-result-object p1

    if-eqz p1, :cond_d6

    if-eqz p2, :cond_b6

    .line 1241
    # getter for: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->UNICODE_LITTLE_UNMARKED:Ljava/nio/charset/Charset;
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1500()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    goto :goto_b7

    :cond_b6
    move-object p1, p4

    :goto_b7
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    if-eqz v1, :cond_c9

    .line 1242
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1243
    invoke-virtual {v1, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    # getter for: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->UNICODE_LITTLE_UNMARKED:Ljava/nio/charset/Charset;
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1500()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    :cond_c9
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    .line 1244
    # getter for: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->UNICODE_LITTLE_UNMARKED:Ljava/nio/charset/Charset;
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1500()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    return-void

    .line 1239
    :cond_d6
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string p2, "Unicode not supported"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getResponse()Ljava/lang/String;
    .registers 14

    .line 1250
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    array-length v0, v0

    .line 1251
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    array-length v1, v1

    .line 1253
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    array-length v2, v2

    goto :goto_e

    :cond_d
    move v2, v3

    .line 1254
    :goto_e
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    if-eqz v4, :cond_14

    array-length v4, v4

    goto :goto_15

    :cond_14
    move v4, v3

    .line 1255
    :goto_15
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    array-length v5, v5

    .line 1257
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    if-eqz v6, :cond_1d

    .line 1258
    array-length v3, v6

    :cond_1d
    add-int/lit8 v6, v1, 0x48

    add-int v7, v6, v0

    add-int v8, v7, v2

    add-int v9, v8, v5

    add-int v10, v9, v4

    add-int v11, v10, v3

    const/4 v12, 0x3

    .line 1273
    invoke-virtual {p0, v11, v12}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->prepareResponse(II)V

    .line 1276
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1277
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    const/16 v1, 0x48

    .line 1280
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1283
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1284
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1287
    invoke-virtual {p0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1290
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1291
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1294
    invoke-virtual {p0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1297
    invoke-virtual {p0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1298
    invoke-virtual {p0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1301
    invoke-virtual {p0, v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1304
    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1305
    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1308
    invoke-virtual {p0, v9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1311
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1312
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1315
    invoke-virtual {p0, v10}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1318
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    const v1, 0x80280

    and-int/2addr v1, v0

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    const v2, 0x8000

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x20

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    const/high16 v2, 0x20000000

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    const/high16 v2, 0x800000

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x1

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    const/16 v0, 0x105

    .line 1346
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    const/16 v0, 0xa28

    .line 1348
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    const/16 v0, 0xf00

    .line 1350
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1353
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1354
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1355
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1356
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1357
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1358
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    if-eqz v0, :cond_c1

    .line 1359
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1362
    :cond_c1
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
