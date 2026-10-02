.class public Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;
.super Ljava/lang/Object;
.source "DefaultCookieSpecProvider.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;
    }
.end annotation


# instance fields
.field private final compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

.field private volatile cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

.field private final datepatterns:[Ljava/lang/String;

.field private final oneHeader:Z

.field private final publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 84
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .registers 5

    .line 80
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_8

    .line 67
    :cond_6
    sget-object p1, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    :goto_8
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    .line 68
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 69
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->datepatterns:[Ljava/lang/String;

    .line 70
    iput-boolean p4, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 13

    .line 89
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    if-nez p1, :cond_f6

    .line 90
    monitor-enter p0

    .line 91
    :try_start_5
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    if-nez p1, :cond_f1

    .line 92
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    const/16 v1, 0x9

    new-array v1, v1, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 95
    invoke-static {v2, v5}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    const/4 v10, 0x7

    aput-object v2, v1, v10

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    const/16 v10, 0x8

    aput-object v2, v1, v10

    invoke-direct {p1, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    .line 103
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    new-array v2, v9, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    new-instance v9, Lcz/msebera/android/httpclient/impl/cookie/RFC2109VersionHandler;

    invoke-direct {v9}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109VersionHandler;-><init>()V

    aput-object v9, v2, v3

    new-instance v9, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v9}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v9, v2, v4

    new-instance v9, Lcz/msebera/android/httpclient/impl/cookie/RFC2109DomainHandler;

    invoke-direct {v9}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109DomainHandler;-><init>()V

    iget-object v10, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 106
    invoke-static {v9, v10}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    move-result-object v9

    aput-object v9, v2, v5

    new-instance v9, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v9}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v9, v2, v6

    new-instance v9, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v9}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v9, v2, v7

    new-instance v9, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v9}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v9, v2, v8

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    .line 111
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    new-array v2, v8, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    new-instance v8, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    invoke-direct {v8}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 112
    invoke-static {v8, v9}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    move-result-object v8

    aput-object v8, v2, v3

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    sget-object v9, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->IE_MEDIUM_SECURITY:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    if-ne v8, v9, :cond_b9

    new-instance v8, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$1;

    invoke-direct {v8, p0}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$1;-><init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;)V

    goto :goto_be

    :cond_b9
    new-instance v8, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v8}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    :goto_be
    aput-object v8, v2, v4

    new-instance v8, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v8}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v8, v2, v5

    new-instance v5, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v5, v2, v6

    new-instance v5, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->datepatterns:[Ljava/lang/String;

    if-eqz v6, :cond_db

    .line 125
    invoke-virtual {v6}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_e2

    :cond_db
    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "EEE, dd-MMM-yy HH:mm:ss z"

    aput-object v6, v4, v3

    move-object v3, v4

    :goto_e2
    invoke-direct {v5, v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v5, v2, v7

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    .line 127
    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;

    invoke-direct {v2, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;-><init>(Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;)V

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 129
    :cond_f1
    monitor-exit p0

    goto :goto_f6

    :catchall_f3
    move-exception p1

    monitor-exit p0
    :try_end_f5
    .catchall {:try_start_5 .. :try_end_f5} :catchall_f3

    throw p1

    .line 131
    :cond_f6
    :goto_f6
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-object p1
.end method
