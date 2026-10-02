.class Lcz/msebera/android/httpclient/entity/mime/HttpRFC6532Multipart;
.super Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;
.source "HttpRFC6532Multipart.java"


# instance fields
.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 51
    iput-object p3, p0, Lcz/msebera/android/httpclient/entity/mime/HttpRFC6532Multipart;->parts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected formatMultipartHeader(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->getHeader()Lcz/msebera/android/httpclient/entity/mime/Header;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/entity/mime/Header;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    .line 67
    sget-object v1, Lcz/msebera/android/httpclient/entity/mime/MIME;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, p2}, Lcz/msebera/android/httpclient/entity/mime/HttpRFC6532Multipart;->writeField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/HttpRFC6532Multipart;->parts:Ljava/util/List;

    return-object v0
.end method
