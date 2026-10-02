.class public Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;
.super Ljava/lang/Object;
.source "NTLMSchemeFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .registers 2

    .line 55
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;-><init>()V

    return-object p1
.end method

.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .registers 2

    .line 50
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;-><init>()V

    return-object p1
.end method
