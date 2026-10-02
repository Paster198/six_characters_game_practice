.class public Lcz/msebera/android/httpclient/conn/ssl/NoopHostnameVerifier;
.super Ljava/lang/Object;
.source "NoopHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/conn/ssl/NoopHostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/NoopHostnameVerifier;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/NoopHostnameVerifier;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/ssl/NoopHostnameVerifier;->INSTANCE:Lcz/msebera/android/httpclient/conn/ssl/NoopHostnameVerifier;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .line 53
    const-string v0, "NO_OP"

    return-object v0
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
