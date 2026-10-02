.class Lcz/msebera/android/httpclient/client/entity/DeflateDecompressingEntity$1;
.super Ljava/lang/Object;
.source "DeflateDecompressingEntity.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/client/entity/DeflateDecompressingEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
