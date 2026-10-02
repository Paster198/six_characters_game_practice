.class public Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;
.super Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;
.source "NTLMScheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;
    }
.end annotation


# instance fields
.field private challenge:Ljava/lang/String;

.field private final engine:Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;

.field private state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 77
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;-><init>()V

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;-><init>(Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;-><init>()V

    .line 67
    const-string v0, "NTLM engine"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->engine:Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;

    .line 69
    sget-object p1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->UNINITIATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 129
    :try_start_0
    check-cast p1, Lcz/msebera/android/httpclient/auth/NTCredentials;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_2} :catch_88

    .line 136
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->FAILED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-eq p2, v0, :cond_80

    .line 138
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne p2, v0, :cond_21

    .line 139
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->engine:Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;

    .line 140
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-interface {p2, v0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;->generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    sget-object p2, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    goto :goto_43

    .line 143
    :cond_21
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne p2, v0, :cond_69

    .line 144
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->engine:Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;

    .line 145
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    .line 144
    invoke-interface/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;->generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    sget-object p2, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 154
    :goto_43
    new-instance p2, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v0, 0x20

    invoke-direct {p2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 155
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->isProxy()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 156
    const-string v0, "Proxy-Authorization"

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_5b

    .line 158
    :cond_56
    const-string v0, "Authorization"

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 160
    :goto_5b
    const-string v0, ": NTLM "

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2, p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 162
    new-instance p1, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    return-object p1

    .line 152
    :cond_69
    new-instance p1, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_80
    new-instance p1, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string p2, "NTLM authentication failed"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :catch_88
    new-instance p2, Lcz/msebera/android/httpclient/auth/InvalidCredentialsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Credentials cannot be used for NTLM authentication: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRealm()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .registers 2

    .line 82
    const-string v0, "ntlm"

    return-object v0
.end method

.method public isComplete()Z
    .registers 3

    .line 167
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->FAILED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectionBased()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected parseChallenge(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 106
    invoke-virtual {p1, p2, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 108
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object p2, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->UNINITIATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne p1, p2, :cond_17

    .line 109
    sget-object p1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    return-void

    .line 111
    :cond_17
    sget-object p1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->FAILED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    return-void

    .line 114
    :cond_1c
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object p2, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_31

    .line 117
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object p2, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    if-ne p1, p2, :cond_30

    .line 118
    sget-object p1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    :cond_30
    return-void

    .line 115
    :cond_31
    sget-object p1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->FAILED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;->state:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 116
    new-instance p1, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    const-string p2, "Out of sequence NTLM response message"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
