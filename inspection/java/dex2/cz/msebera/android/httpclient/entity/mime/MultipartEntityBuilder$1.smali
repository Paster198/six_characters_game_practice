.class synthetic Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder$1;
.super Ljava/lang/Object;
.source "MultipartEntityBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cz$msebera$android$httpclient$entity$mime$HttpMultipartMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 216
    invoke-static {}, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->values()[Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder$1;->$SwitchMap$cz$msebera$android$httpclient$entity$mime$HttpMultipartMode:[I

    :try_start_9
    sget-object v1, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder$1;->$SwitchMap$cz$msebera$android$httpclient$entity$mime$HttpMultipartMode:[I

    sget-object v1, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->RFC6532:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
