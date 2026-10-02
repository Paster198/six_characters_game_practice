.class public Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;
.super Lcz/msebera/android/httpclient/HttpException;
.source "TunnelRefusedException.java"


# static fields
.field private static final serialVersionUID:J = -0x77ff549cf91bbbabL


# instance fields
.field private final response:Lcz/msebera/android/httpclient/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;->response:Lcz/msebera/android/httpclient/HttpResponse;

    return-void
.end method


# virtual methods
.method public getResponse()Lcz/msebera/android/httpclient/HttpResponse;
    .registers 2

    .line 52
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;->response:Lcz/msebera/android/httpclient/HttpResponse;

    return-object v0
.end method
