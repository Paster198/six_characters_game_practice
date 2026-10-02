.class public Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;
.super Ljava/lang/Object;
.source "BasicSchemeFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .registers 3

    .line 70
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;->charset:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>(Ljava/nio/charset/Charset;)V

    return-object p1
.end method

.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .registers 2

    .line 65
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>()V

    return-object p1
.end method
