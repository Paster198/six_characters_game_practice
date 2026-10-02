.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;
.super Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type2Message"
.end annotation


# instance fields
.field protected challenge:[B

.field protected flags:I

.field protected target:Ljava/lang/String;

.field protected targetInfo:[B


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1074
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x8

    .line 1091
    new-array p1, p1, [B

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->challenge:[B

    const/16 v0, 0x18

    .line 1092
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->readBytes([BI)V

    const/16 p1, 0x14

    .line 1094
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->readULong(I)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_58

    const/4 v0, 0x0

    .line 1103
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->target:Ljava/lang/String;

    .line 1107
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->getMessageLength()I

    move-result v1

    if-lt v1, p1, :cond_42

    const/16 p1, 0xc

    .line 1108
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->readSecurityBuffer(I)[B

    move-result-object p1

    .line 1109
    array-length v1, p1

    if-eqz v1, :cond_42

    .line 1111
    :try_start_2d
    new-instance v1, Ljava/lang/String;

    const-string v2, "UnicodeLittleUnmarked"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->target:Ljava/lang/String;
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_42

    :catch_37
    move-exception p1

    .line 1113
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1119
    :cond_42
    :goto_42
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->targetInfo:[B

    .line 1121
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->getMessageLength()I

    move-result p1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_57

    const/16 p1, 0x28

    .line 1122
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->readSecurityBuffer(I)[B

    move-result-object p1

    .line 1123
    array-length v0, p1

    if-eqz v0, :cond_57

    .line 1124
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->targetInfo:[B

    :cond_57
    return-void

    .line 1097
    :cond_58
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NTLM type 2 message indicates no support for Unicode. Flags are: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    .line 1099
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getChallenge()[B
    .registers 2

    .line 1131
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->challenge:[B

    return-object v0
.end method

.method getFlags()I
    .registers 2

    .line 1146
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    return v0
.end method

.method getTarget()Ljava/lang/String;
    .registers 2

    .line 1136
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->target:Ljava/lang/String;

    return-object v0
.end method

.method getTargetInfo()[B
    .registers 2

    .line 1141
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->targetInfo:[B

    return-object v0
.end method
