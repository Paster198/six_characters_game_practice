.class public Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;
.super Ljava/lang/Object;
.source "DisallowIdentityContentLengthStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;


# instance fields
.field private final contentLengthStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    new-instance v0, Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;

    new-instance v1, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;-><init>(I)V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;-><init>(Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;->contentLengthStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    return-void
.end method


# virtual methods
.method public determineLength(Lcz/msebera/android/httpclient/HttpMessage;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;->contentLengthStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;->determineLength(Lcz/msebera/android/httpclient/HttpMessage;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_d

    return-wide v0

    .line 59
    :cond_d
    new-instance p1, Lcz/msebera/android/httpclient/ProtocolException;

    const-string v0, "Identity transfer encoding cannot be used"

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
