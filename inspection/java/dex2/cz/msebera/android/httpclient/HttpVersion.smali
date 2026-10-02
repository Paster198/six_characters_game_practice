.class public final Lcz/msebera/android/httpclient/HttpVersion;
.super Lcz/msebera/android/httpclient/ProtocolVersion;
.source "HttpVersion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HTTP:Ljava/lang/String; = "HTTP"

.field public static final HTTP_0_9:Lcz/msebera/android/httpclient/HttpVersion;

.field public static final HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

.field public static final HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

.field private static final serialVersionUID:J = -0x514703574c384bf0L


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 57
    new-instance v0, Lcz/msebera/android/httpclient/HttpVersion;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcz/msebera/android/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_0_9:Lcz/msebera/android/httpclient/HttpVersion;

    .line 60
    new-instance v0, Lcz/msebera/android/httpclient/HttpVersion;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    .line 63
    new-instance v0, Lcz/msebera/android/httpclient/HttpVersion;

    invoke-direct {v0, v1, v1}, Lcz/msebera/android/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 75
    const-string v0, "HTTP"

    invoke-direct {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public forVersion(II)Lcz/msebera/android/httpclient/ProtocolVersion;
    .registers 4

    .line 90
    iget v0, p0, Lcz/msebera/android/httpclient/HttpVersion;->major:I

    if-ne p1, v0, :cond_9

    iget v0, p0, Lcz/msebera/android/httpclient/HttpVersion;->minor:I

    if-ne p2, v0, :cond_9

    return-object p0

    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    if-nez p2, :cond_11

    .line 96
    sget-object p1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    return-object p1

    :cond_11
    if-ne p2, v0, :cond_16

    .line 99
    sget-object p1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    return-object p1

    :cond_16
    if-nez p1, :cond_1f

    const/16 v0, 0x9

    if-ne p2, v0, :cond_1f

    .line 103
    sget-object p1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_0_9:Lcz/msebera/android/httpclient/HttpVersion;

    return-object p1

    .line 107
    :cond_1f
    new-instance v0, Lcz/msebera/android/httpclient/HttpVersion;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/HttpVersion;-><init>(II)V

    return-object v0
.end method
