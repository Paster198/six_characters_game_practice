.class public Lcz/msebera/android/httpclient/auth/AuthState;
.super Ljava/lang/Object;
.source "AuthState.java"


# instance fields
.field private authOptions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcz/msebera/android/httpclient/auth/AuthOption;",
            ">;"
        }
    .end annotation
.end field

.field private authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

.field private authScope:Lcz/msebera/android/httpclient/auth/AuthScope;

.field private credentials:Lcz/msebera/android/httpclient/auth/Credentials;

.field private state:Lcz/msebera/android/httpclient/auth/AuthProtocolState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->UNCHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->state:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    return-void
.end method


# virtual methods
.method public getAuthOptions()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcz/msebera/android/httpclient/auth/AuthOption;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authOptions:Ljava/util/Queue;

    return-object v0
.end method

.method public getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;
    .registers 2

    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

    return-object v0
.end method

.method public getAuthScope()Lcz/msebera/android/httpclient/auth/AuthScope;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authScope:Lcz/msebera/android/httpclient/auth/AuthScope;

    return-object v0
.end method

.method public getCredentials()Lcz/msebera/android/httpclient/auth/Credentials;
    .registers 2

    .line 100
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->credentials:Lcz/msebera/android/httpclient/auth/Credentials;

    return-object v0
.end method

.method public getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;
    .registers 2

    .line 79
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->state:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    return-object v0
.end method

.method public hasAuthOptions()Z
    .registers 2

    .line 135
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authOptions:Ljava/util/Queue;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    return-void
.end method

.method public isValid()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 2

    .line 68
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->UNCHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->state:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authOptions:Ljava/util/Queue;

    .line 70
    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

    .line 71
    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authScope:Lcz/msebera/android/httpclient/auth/AuthScope;

    .line 72
    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthState;->credentials:Lcz/msebera/android/httpclient/auth/Credentials;

    return-void
.end method

.method public setAuthScheme(Lcz/msebera/android/httpclient/auth/AuthScheme;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_6

    .line 180
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    return-void

    .line 183
    :cond_6
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

    return-void
.end method

.method public setAuthScope(Lcz/msebera/android/httpclient/auth/AuthScope;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authScope:Lcz/msebera/android/httpclient/auth/AuthScope;

    return-void
.end method

.method public setCredentials(Lcz/msebera/android/httpclient/auth/Credentials;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->credentials:Lcz/msebera/android/httpclient/auth/Credentials;

    return-void
.end method

.method public setState(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    .line 86
    :cond_3
    sget-object p1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->UNCHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    :goto_5
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->state:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->state:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

    if-eqz v1, :cond_29

    .line 227
    const-string v1, "auth scheme:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_29
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->credentials:Lcz/msebera/android/httpclient/auth/Credentials;

    if-eqz v1, :cond_32

    .line 230
    const-string v1, "credentials present"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V
    .registers 4

    .line 112
    const-string v0, "Auth scheme"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    const-string v0, "Credentials"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

    .line 115
    iput-object p2, p0, Lcz/msebera/android/httpclient/auth/AuthState;->credentials:Lcz/msebera/android/httpclient/auth/Credentials;

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authOptions:Ljava/util/Queue;

    return-void
.end method

.method public update(Ljava/util/Queue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcz/msebera/android/httpclient/auth/AuthOption;",
            ">;)V"
        }
    .end annotation

    .line 146
    const-string v0, "Queue of auth options"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 147
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authOptions:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->authScheme:Lcz/msebera/android/httpclient/auth/AuthScheme;

    .line 149
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthState;->credentials:Lcz/msebera/android/httpclient/auth/Credentials;

    return-void
.end method
