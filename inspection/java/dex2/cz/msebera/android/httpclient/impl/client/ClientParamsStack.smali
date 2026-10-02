.class public Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;
.super Lcz/msebera/android/httpclient/params/AbstractHttpParams;
.source "ClientParamsStack.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final applicationParams:Lcz/msebera/android/httpclient/params/HttpParams;

.field protected final clientParams:Lcz/msebera/android/httpclient/params/HttpParams;

.field protected final overrideParams:Lcz/msebera/android/httpclient/params/HttpParams;

.field protected final requestParams:Lcz/msebera/android/httpclient/params/HttpParams;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;)V
    .registers 5

    .line 116
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->getApplicationParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->getClientParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v1

    .line 118
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->getRequestParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v2

    .line 119
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->getOverrideParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object p1

    .line 116
    invoke-direct {p0, v0, v1, v2, p1}, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6

    if-eqz p2, :cond_3

    goto :goto_7

    .line 139
    :cond_3
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->getApplicationParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object p2

    :goto_7
    if-eqz p3, :cond_a

    goto :goto_e

    .line 140
    :cond_a
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->getClientParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object p3

    :goto_e
    if-eqz p4, :cond_11

    goto :goto_15

    .line 141
    :cond_11
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->getRequestParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object p4

    :goto_15
    if-eqz p5, :cond_18

    goto :goto_1c

    .line 142
    :cond_18
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->getOverrideParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object p5

    .line 139
    :goto_1c
    invoke-direct {p0, p2, p3, p4, p5}, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5

    .line 100
    invoke-direct {p0}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;-><init>()V

    .line 101
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->applicationParams:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 102
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->clientParams:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 103
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->requestParams:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 104
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->overrideParams:Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method


# virtual methods
.method public copy()Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 1

    return-object p0
.end method

.method public final getApplicationParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 2

    .line 152
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->applicationParams:Lcz/msebera/android/httpclient/params/HttpParams;

    return-object v0
.end method

.method public final getClientParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 2

    .line 161
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->clientParams:Lcz/msebera/android/httpclient/params/HttpParams;

    return-object v0
.end method

.method public final getOverrideParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 2

    .line 179
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->overrideParams:Lcz/msebera/android/httpclient/params/HttpParams;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 193
    const-string v0, "Parameter name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->overrideParams:Lcz/msebera/android/httpclient/params/HttpParams;

    if-eqz v0, :cond_e

    .line 198
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_19

    .line 200
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->requestParams:Lcz/msebera/android/httpclient/params/HttpParams;

    if-eqz v1, :cond_19

    .line 201
    invoke-interface {v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_19
    if-nez v0, :cond_23

    .line 203
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->clientParams:Lcz/msebera/android/httpclient/params/HttpParams;

    if-eqz v1, :cond_23

    .line 204
    invoke-interface {v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_23
    if-nez v0, :cond_2e

    .line 206
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->applicationParams:Lcz/msebera/android/httpclient/params/HttpParams;

    if-eqz v1, :cond_2e

    .line 207
    invoke-interface {v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2e
    return-object v0
.end method

.method public final getRequestParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 2

    .line 170
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->requestParams:Lcz/msebera/android/httpclient/params/HttpParams;

    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .registers 3

    .line 246
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Removing parameters in a stack is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 228
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Setting parameters in a stack is not supported."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
