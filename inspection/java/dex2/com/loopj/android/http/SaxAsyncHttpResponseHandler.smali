.class public abstract Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "SaxAsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/xml/sax/helpers/DefaultHandler;",
        ">",
        "Lcom/loopj/android/http/AsyncHttpResponseHandler;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SaxAsyncHttpRH"


# instance fields
.field private handler:Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    if-eqz p1, :cond_b

    .line 79
    iput-object p1, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    return-void

    .line 77
    :cond_b
    new-instance p1, Ljava/lang/Error;

    const-string v0, "null instance of <T extends DefaultHandler> passed to constructor"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const-string v0, "getResponseData exception"

    const-string v1, "SaxAsyncHttpRH"

    const/4 v2, 0x0

    if-eqz p1, :cond_61

    .line 93
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_61

    .line 97
    :try_start_d
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 99
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 100
    iget-object v4, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 101
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_27
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_27} :catch_49
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_27} :catch_3c
    .catchall {:try_start_d .. :try_end_27} :catchall_3a

    .line 102
    :try_start_27
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v3, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_2f
    .catch Lorg/xml/sax/SAXException; {:try_start_27 .. :try_end_2f} :catch_38
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_27 .. :try_end_2f} :catch_36
    .catchall {:try_start_27 .. :try_end_2f} :catchall_56

    .line 108
    invoke-static {p1}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 111
    :goto_32
    :try_start_32
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_61

    goto :goto_61

    :catch_36
    move-exception v3

    goto :goto_3e

    :catch_38
    move-exception v3

    goto :goto_4b

    :catchall_3a
    move-exception v0

    goto :goto_58

    :catch_3c
    move-exception v3

    move-object v4, v2

    .line 106
    :goto_3e
    :try_start_3e
    sget-object v5, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    invoke-interface {v5, v1, v0, v3}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_56

    .line 108
    invoke-static {p1}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    if-eqz v4, :cond_61

    goto :goto_32

    :catch_49
    move-exception v3

    move-object v4, v2

    .line 104
    :goto_4b
    :try_start_4b
    sget-object v5, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    invoke-interface {v5, v1, v0, v3}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_56

    .line 108
    invoke-static {p1}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    if-eqz v4, :cond_61

    goto :goto_32

    :catchall_56
    move-exception v0

    move-object v2, v4

    :goto_58
    invoke-static {p1}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    if-eqz v2, :cond_60

    .line 111
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_60

    .line 112
    :catch_60
    :cond_60
    throw v0

    :catch_61
    :cond_61
    :goto_61
    return-object v2
.end method

.method public abstract onFailure(I[Lcz/msebera/android/httpclient/Header;Lorg/xml/sax/helpers/DefaultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcz/msebera/android/httpclient/Header;",
            "TT;)V"
        }
    .end annotation
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .line 146
    iget-object p3, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Lorg/xml/sax/helpers/DefaultHandler;)V

    return-void
.end method

.method public abstract onSuccess(I[Lcz/msebera/android/httpclient/Header;Lorg/xml/sax/helpers/DefaultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcz/msebera/android/httpclient/Header;",
            "TT;)V"
        }
    .end annotation
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 4

    .line 131
    iget-object p3, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;Lorg/xml/sax/helpers/DefaultHandler;)V

    return-void
.end method
