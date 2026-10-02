.class public Landroid/net/http/HttpsConnection;
.super Landroid/net/http/Connection;
.source "HttpsConnection.java"


# instance fields
.field protected mCertificate:Landroid/net/http/SslCertificate;

.field protected mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 5
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Lorg/apache/http/HttpHost;

    move-object v1, v0

    check-cast v1, Landroid/net/http/RequestFeeder;

    invoke-direct {p0, v0, v0, v0}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initializeEngine(Ljava/io/File;)V
    .registers 2

    .line 6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .line 2
    invoke-super {p0}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
