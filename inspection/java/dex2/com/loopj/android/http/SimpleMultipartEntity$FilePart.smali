.class Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;
.super Ljava/lang/Object;
.source "SimpleMultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/http/SimpleMultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilePart"
.end annotation


# instance fields
.field public final file:Ljava/io/File;

.field public final header:[B

.field final synthetic this$0:Lcom/loopj/android/http/SimpleMultipartEntity;


# direct methods
.method public constructor <init>(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    .line 253
    iput-object p1, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, p4}, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    .line 255
    iput-object p3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 248
    iput-object p1, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    :cond_f
    invoke-direct {p0, p2, p5, p4}, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    .line 250
    iput-object p3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    return-void
.end method

.method private createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    .line 259
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 261
    :try_start_5
    iget-object v1, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    # getter for: Lcom/loopj/android/http/SimpleMultipartEntity;->boundaryLine:[B
    invoke-static {v1}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$000(Lcom/loopj/android/http/SimpleMultipartEntity;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 264
    iget-object v1, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    # invokes: Lcom/loopj/android/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B
    invoke-static {v1, p1, p2}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$100(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 265
    iget-object p1, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    # invokes: Lcom/loopj/android/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B
    invoke-static {p1, p3}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$200(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 266
    # getter for: Lcom/loopj/android/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B
    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$300()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 267
    # getter for: Lcom/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B
    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$400()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2e} :catch_2f

    goto :goto_39

    :catch_2f
    move-exception p1

    .line 270
    sget-object p2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string p3, "SimpleMultipartEntity"

    const-string v1, "createHeader ByteArrayOutputStream exception"

    invoke-interface {p2, p3, v1, p1}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    :goto_39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getTotalLength()J
    .registers 5

    .line 276
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    # getter for: Lcom/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B
    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$400()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 277
    iget-object v2, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 282
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    iget-object v1, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    array-length v1, v1

    int-to-long v1, v1

    # invokes: Lcom/loopj/android/http/SimpleMultipartEntity;->updateProgress(J)V
    invoke-static {v0, v1, v2}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$500(Lcom/loopj/android/http/SimpleMultipartEntity;J)V

    .line 284
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x1000

    .line 285
    new-array v1, v1, [B

    .line 287
    :goto_19
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2b

    const/4 v3, 0x0

    .line 288
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 289
    iget-object v3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    int-to-long v4, v2

    # invokes: Lcom/loopj/android/http/SimpleMultipartEntity;->updateProgress(J)V
    invoke-static {v3, v4, v5}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$500(Lcom/loopj/android/http/SimpleMultipartEntity;J)V

    goto :goto_19

    .line 291
    :cond_2b
    # getter for: Lcom/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B
    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$400()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 292
    iget-object v1, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    # getter for: Lcom/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B
    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$400()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    # invokes: Lcom/loopj/android/http/SimpleMultipartEntity;->updateProgress(J)V
    invoke-static {v1, v2, v3}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$500(Lcom/loopj/android/http/SimpleMultipartEntity;J)V

    .line 293
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 294
    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    return-void
.end method
