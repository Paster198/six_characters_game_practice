.class final Lcom/google/firebase/installations/remote/AutoValue_TokenResult;
.super Lcom/google/firebase/installations/remote/TokenResult;
.source "AutoValue_TokenResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;
    }
.end annotation


# instance fields
.field private final responseCode:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

.field private final token:Ljava/lang/String;

.field private final tokenExpirationTimestamp:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JLcom/google/firebase/installations/remote/TokenResult$ResponseCode;)V
    .registers 5

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/installations/remote/TokenResult;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->token:Ljava/lang/String;

    .line 22
    iput-wide p2, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->tokenExpirationTimestamp:J

    .line 23
    iput-object p4, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->responseCode:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/google/firebase/installations/remote/TokenResult$ResponseCode;Lcom/google/firebase/installations/remote/AutoValue_TokenResult$1;)V
    .registers 6

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;-><init>(Ljava/lang/String;JLcom/google/firebase/installations/remote/TokenResult$ResponseCode;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 58
    :cond_4
    instance-of v1, p1, Lcom/google/firebase/installations/remote/TokenResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 59
    check-cast p1, Lcom/google/firebase/installations/remote/TokenResult;

    .line 60
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->token:Ljava/lang/String;

    if-nez v1, :cond_16

    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/TokenResult;->getToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_40

    goto :goto_20

    :cond_16
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/TokenResult;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    :goto_20
    iget-wide v3, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->tokenExpirationTimestamp:J

    .line 61
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/TokenResult;->getTokenExpirationTimestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->responseCode:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    if-nez v1, :cond_35

    .line 62
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/TokenResult;->getResponseCode()Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    move-result-object p1

    if-nez p1, :cond_40

    goto :goto_3f

    :cond_35
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/TokenResult;->getResponseCode()Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    :goto_3f
    return v0

    :cond_40
    return v2
.end method

.method public getResponseCode()Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->responseCode:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenExpirationTimestamp()J
    .registers 3

    .line 35
    iget-wide v0, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->tokenExpirationTimestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    .line 71
    iget-object v0, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->token:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 73
    iget-wide v3, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->tokenExpirationTimestamp:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 75
    iget-object v2, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->responseCode:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    if-nez v2, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->hashCode()I

    move-result v1

    :goto_23
    xor-int/2addr v0, v1

    return v0
.end method

.method public toBuilder()Lcom/google/firebase/installations/remote/TokenResult$Builder;
    .registers 3

    .line 81
    new-instance v0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;-><init>(Lcom/google/firebase/installations/remote/TokenResult;Lcom/google/firebase/installations/remote/AutoValue_TokenResult$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TokenResult{token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tokenExpirationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->tokenExpirationTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;->responseCode:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
