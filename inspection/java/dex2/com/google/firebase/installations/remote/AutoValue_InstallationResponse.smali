.class final Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;
.super Lcom/google/firebase/installations/remote/InstallationResponse;
.source "AutoValue_InstallationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse$Builder;
    }
.end annotation


# instance fields
.field private final authToken:Lcom/google/firebase/installations/remote/TokenResult;

.field private final fid:Ljava/lang/String;

.field private final refreshToken:Ljava/lang/String;

.field private final responseCode:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

.field private final uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/installations/remote/TokenResult;Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;)V
    .registers 6

    .line 25
    invoke-direct {p0}, Lcom/google/firebase/installations/remote/InstallationResponse;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->uri:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->fid:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->refreshToken:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->authToken:Lcom/google/firebase/installations/remote/TokenResult;

    .line 30
    iput-object p5, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->responseCode:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/installations/remote/TokenResult;Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse$1;)V
    .registers 7

    .line 8
    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/installations/remote/TokenResult;Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 79
    :cond_4
    instance-of v1, p1, Lcom/google/firebase/installations/remote/InstallationResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_75

    .line 80
    check-cast p1, Lcom/google/firebase/installations/remote/InstallationResponse;

    .line 81
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->uri:Ljava/lang/String;

    if-nez v1, :cond_16

    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getUri()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_75

    goto :goto_20

    :cond_16
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    :goto_20
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->fid:Ljava/lang/String;

    if-nez v1, :cond_2b

    .line 82
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getFid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_75

    goto :goto_35

    :cond_2b
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getFid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    :goto_35
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->refreshToken:Ljava/lang/String;

    if-nez v1, :cond_40

    .line 83
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_75

    goto :goto_4a

    :cond_40
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    :goto_4a
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->authToken:Lcom/google/firebase/installations/remote/TokenResult;

    if-nez v1, :cond_55

    .line 84
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getAuthToken()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v1

    if-nez v1, :cond_75

    goto :goto_5f

    :cond_55
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getAuthToken()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    :goto_5f
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->responseCode:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    if-nez v1, :cond_6a

    .line 85
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getResponseCode()Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    move-result-object p1

    if-nez p1, :cond_75

    goto :goto_74

    :cond_6a
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getResponseCode()Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_75

    :goto_74
    return v0

    :cond_75
    return v2
.end method

.method public getAuthToken()Lcom/google/firebase/installations/remote/TokenResult;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->authToken:Lcom/google/firebase/installations/remote/TokenResult;

    return-object v0
.end method

.method public getFid()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->fid:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->responseCode:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->uri:Ljava/lang/String;

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

    .line 96
    iget-object v3, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->fid:Ljava/lang/String;

    if-nez v3, :cond_16

    move v3, v1

    goto :goto_1a

    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1a
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 98
    iget-object v3, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->refreshToken:Ljava/lang/String;

    if-nez v3, :cond_22

    move v3, v1

    goto :goto_26

    :cond_22
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_26
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 100
    iget-object v3, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->authToken:Lcom/google/firebase/installations/remote/TokenResult;

    if-nez v3, :cond_2e

    move v3, v1

    goto :goto_32

    :cond_2e
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_32
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 102
    iget-object v2, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->responseCode:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    if-nez v2, :cond_39

    goto :goto_3d

    :cond_39
    invoke-virtual {v2}, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->hashCode()I

    move-result v1

    :goto_3d
    xor-int/2addr v0, v1

    return v0
.end method

.method public toBuilder()Lcom/google/firebase/installations/remote/InstallationResponse$Builder;
    .registers 3

    .line 108
    new-instance v0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse$Builder;-><init>(Lcom/google/firebase/installations/remote/InstallationResponse;Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstallationResponse{uri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->fid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->authToken:Lcom/google/firebase/installations/remote/TokenResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse;->responseCode:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
