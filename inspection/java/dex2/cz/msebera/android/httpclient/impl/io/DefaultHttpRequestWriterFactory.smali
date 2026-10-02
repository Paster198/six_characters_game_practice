.class public Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;
.super Ljava/lang/Object;
.source "DefaultHttpRequestWriterFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory<",
        "Lcz/msebera/android/httpclient/HttpRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;


# instance fields
.field private final lineFormatter:Lcz/msebera/android/httpclient/message/LineFormatter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;-><init>(Lcz/msebera/android/httpclient/message/LineFormatter;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/message/LineFormatter;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_8

    .line 52
    :cond_6
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    :goto_8
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;->lineFormatter:Lcz/msebera/android/httpclient/message/LineFormatter;

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;)Lcz/msebera/android/httpclient/io/HttpMessageWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/SessionOutputBuffer;",
            ")",
            "Lcz/msebera/android/httpclient/io/HttpMessageWriter<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriter;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;->lineFormatter:Lcz/msebera/android/httpclient/message/LineFormatter;

    invoke-direct {v0, p1, v1}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriter;-><init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/message/LineFormatter;)V

    return-object v0
.end method
