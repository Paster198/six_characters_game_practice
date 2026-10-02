.class Landroidx/appcompat/app/LayoutIncludeDetector;
.super Ljava/lang/Object;
.source "LayoutIncludeDetector.java"


# instance fields
.field private final mXmlParserStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/LayoutIncludeDetector;->mXmlParserStack:Ljava/util/Deque;

    return-void
.end method

.method private static isParserOutdated(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p0, :cond_13

    .line 108
    :try_start_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    .line 109
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_e} :catch_13

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :catch_13
    :cond_13
    :goto_13
    return v0
.end method

.method private static popOutdatedAttrHolders(Ljava/util/Deque;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ">;>;)",
            "Lorg/xmlpull/v1/XmlPullParser;"
        }
    .end annotation

    .line 95
    :goto_0
    invoke-interface {p0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 96
    invoke-interface {p0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 97
    invoke-static {v0}, Landroidx/appcompat/app/LayoutIncludeDetector;->isParserOutdated(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 98
    invoke-interface {p0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_1c
    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static shouldInheritContext(Lorg/xmlpull/v1/XmlPullParser;Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 3

    if-eqz p1, :cond_16

    if-eq p0, p1, :cond_16

    .line 75
    :try_start_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_16

    .line 78
    const-string p0, "include"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_15} :catch_16

    return p0

    :catch_16
    :cond_16
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method detect(Landroid/util/AttributeSet;)Z
    .registers 6

    .line 45
    instance-of v0, p1, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v0, :cond_24

    .line 46
    check-cast p1, Lorg/xmlpull/v1/XmlPullParser;

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 51
    iget-object v0, p0, Landroidx/appcompat/app/LayoutIncludeDetector;->mXmlParserStack:Ljava/util/Deque;

    invoke-static {v0}, Landroidx/appcompat/app/LayoutIncludeDetector;->popOutdatedAttrHolders(Ljava/util/Deque;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 53
    iget-object v2, p0, Landroidx/appcompat/app/LayoutIncludeDetector;->mXmlParserStack:Ljava/util/Deque;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 56
    invoke-static {p1, v0}, Landroidx/appcompat/app/LayoutIncludeDetector;->shouldInheritContext(Lorg/xmlpull/v1/XmlPullParser;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result p1

    if-eqz p1, :cond_24

    return v1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method
