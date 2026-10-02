.class final Lcom/google/common/base/CharMatcher$JavaIsoControl;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JavaIsoControl"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher$JavaIsoControl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1445
    new-instance v0, Lcom/google/common/base/CharMatcher$JavaIsoControl;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$JavaIsoControl;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$JavaIsoControl;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaIsoControl;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1448
    const-string v0, "CharMatcher.javaIsoControl()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .registers 3

    const/16 v0, 0x1f

    if-le p1, v0, :cond_f

    const/16 v0, 0x7f

    if-lt p1, v0, :cond_d

    const/16 v0, 0x9f

    if-gt p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method
