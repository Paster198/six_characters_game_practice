.class public Lcz/msebera/android/httpclient/conn/params/ConnConnectionParamBean;
.super Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;
.source "ConnConnectionParamBean.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public setMaxStatusLineGarbage(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnConnectionParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.connection.max-status-line-garbage"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method
