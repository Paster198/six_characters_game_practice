.class public final Lim/delight/android/commons/ViewScreenshot;
.super Ljava/lang/Object;
.source "ViewScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/delight/android/commons/ViewScreenshot$Callback;
    }
.end annotation


# static fields
.field public static final FORMAT_JPEG:I = 0x1

.field public static final FORMAT_PNG:I = 0x2

.field private static final NO_MEDIA_FILENAME:Ljava/lang/String; = ".nomedia"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCallback:Lim/delight/android/commons/ViewScreenshot$Callback;

.field private mFilename:Ljava/lang/String;

.field private mFormat:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lim/delight/android/commons/ViewScreenshot$Callback;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_14

    .line 73
    iput-object p1, p0, Lim/delight/android/commons/ViewScreenshot;->mActivity:Landroid/app/Activity;

    .line 74
    iput-object p2, p0, Lim/delight/android/commons/ViewScreenshot;->mCallback:Lim/delight/android/commons/ViewScreenshot$Callback;

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lim/delight/android/commons/ViewScreenshot;->mView:Landroid/view/View;

    .line 76
    iput-object p1, p0, Lim/delight/android/commons/ViewScreenshot;->mFilename:Ljava/lang/String;

    const/4 p1, 0x2

    .line 77
    iput p1, p0, Lim/delight/android/commons/ViewScreenshot;->mFormat:I

    return-void

    .line 70
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_1c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "activity must not be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lim/delight/android/commons/ViewScreenshot;)Landroid/view/View;
    .registers 1

    .line 42
    iget-object p0, p0, Lim/delight/android/commons/ViewScreenshot;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lim/delight/android/commons/ViewScreenshot;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lim/delight/android/commons/ViewScreenshot;->mFilename:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lim/delight/android/commons/ViewScreenshot;)Landroid/app/Activity;
    .registers 1

    .line 42
    iget-object p0, p0, Lim/delight/android/commons/ViewScreenshot;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lim/delight/android/commons/ViewScreenshot;)I
    .registers 1

    .line 42
    iget p0, p0, Lim/delight/android/commons/ViewScreenshot;->mFormat:I

    return p0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;I)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-static {p0, p1, p2, p3}, Lim/delight/android/commons/ViewScreenshot;->saveBitmapToPublicStorage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lim/delight/android/commons/ViewScreenshot;)Lim/delight/android/commons/ViewScreenshot$Callback;
    .registers 1

    .line 42
    iget-object p0, p0, Lim/delight/android/commons/ViewScreenshot;->mCallback:Lim/delight/android/commons/ViewScreenshot$Callback;

    return-object p0
.end method

.method private static saveBitmapToPublicStorage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;I)Ljava/io/File;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 187
    new-instance v0, Ljava/io/File;

    const-string v1, "im.delight.android.commons"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    new-instance p0, Ljava/io/File;

    const-string v1, "screenshots"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 195
    :try_start_16
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_20

    :catch_20
    const/4 v0, 0x1

    if-ne p3, v0, :cond_28

    .line 205
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 206
    const-string v0, ".jpg"

    goto :goto_2f

    :cond_28
    const/4 v0, 0x2

    if-ne p3, v0, :cond_5f

    .line 209
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 210
    const-string v0, ".png"

    .line 217
    :goto_2f
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4e

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 224
    :cond_4e
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x5a

    .line 226
    invoke-virtual {p2, p3, p1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 228
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 230
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    return-object v1

    .line 213
    :cond_5f
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown format: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asFile(Ljava/lang/String;)Lim/delight/android/commons/ViewScreenshot;
    .registers 3

    if-eqz p1, :cond_b

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 107
    iput-object p1, p0, Lim/delight/android/commons/ViewScreenshot;->mFilename:Ljava/lang/String;

    return-object p0

    .line 104
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "filename must not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()V
    .registers 3

    .line 133
    iget-object v0, p0, Lim/delight/android/commons/ViewScreenshot;->mView:Landroid/view/View;

    invoke-static {v0}, Lim/delight/android/commons/UI;->getViewScreenshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    new-instance v1, Lim/delight/android/commons/ViewScreenshot$1;

    invoke-direct {v1, p0, v0}, Lim/delight/android/commons/ViewScreenshot$1;-><init>(Lim/delight/android/commons/ViewScreenshot;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lim/delight/android/commons/ViewScreenshot$1;->start()V

    return-void
.end method

.method public from(Landroid/view/View;)Lim/delight/android/commons/ViewScreenshot;
    .registers 3

    if-eqz p1, :cond_5

    .line 91
    iput-object p1, p0, Lim/delight/android/commons/ViewScreenshot;->mView:Landroid/view/View;

    return-object p0

    .line 88
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "view must not be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inFormat(I)Lim/delight/android/commons/ViewScreenshot;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_f

    .line 120
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "format must be either FORMAT_JPEG or FORMAT_PNG"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_f
    :goto_f
    iput p1, p0, Lim/delight/android/commons/ViewScreenshot;->mFormat:I

    return-object p0
.end method
