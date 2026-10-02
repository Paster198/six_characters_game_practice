.class public final Landroidx/core/text/util/LinkifyCompat;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/LinkifyCompat$LinkSpec;,
        Landroidx/core/text/util/LinkifyCompat$Api24Impl;,
        Landroidx/core/text/util/LinkifyCompat$LinkifyMask;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 57
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    .line 59
    new-instance v0, Landroidx/core/text/util/LinkifyCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/text/util/LinkifyCompat$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLinkMovementMethod(Landroid/widget/TextView;)V
    .registers 2

    .line 368
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 370
    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_15

    .line 371
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 372
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_15
    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 10

    .line 195
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 196
    invoke-static {p0, p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 199
    invoke-static/range {v1 .. v6}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 12

    .line 220
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 221
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void

    :cond_a
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 224
    invoke-static/range {v1 .. v6}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 12

    .line 247
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 248
    invoke-static/range {p0 .. p5}, Landroidx/core/text/util/LinkifyCompat$Api24Impl;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void

    .line 251
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 253
    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 256
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    :cond_23
    return-void
.end method

.method public static addLinks(Landroid/text/Spannable;I)Z
    .registers 12

    .line 91
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 92
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result p0

    return p0

    :cond_b
    const/4 v0, 0x0

    if-nez p1, :cond_f

    return v0

    .line 98
    :cond_f
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 100
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1e
    if-ltz v2, :cond_28

    .line 101
    aget-object v4, v1, v2

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    :cond_28
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_30

    const/4 v1, 0x4

    .line 105
    invoke-static {p0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 108
    :cond_30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_53

    .line 111
    sget-object v6, Landroidx/core/util/PatternsCompat;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v7, v0

    const-string v1, "https://"

    aput-object v1, v7, v3

    const-string v1, "rtsp://"

    const/4 v2, 0x2

    aput-object v1, v7, v2

    sget-object v8, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v9, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    goto :goto_54

    :cond_53
    move-object v5, p0

    :goto_54
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_65

    .line 117
    sget-object v6, Landroidx/core/util/PatternsCompat;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    new-array v7, v3, [Ljava/lang/String;

    const-string p0, "mailto:"

    aput-object p0, v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_65
    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_6c

    .line 123
    invoke-static {v4, v5}, Landroidx/core/text/util/LinkifyCompat;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 126
    :cond_6c
    invoke-static {v4, v5}, Landroidx/core/text/util/LinkifyCompat;->pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 128
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_76

    return v0

    .line 132
    :cond_76
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7a
    :goto_7a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_94

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 133
    iget-object v0, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    if-nez v0, :cond_7a

    .line 134
    iget-object v0, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    iget v1, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget p1, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-static {v0, v1, p1, v5}, Landroidx/core/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_7a

    :cond_94
    return v3
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 9

    .line 272
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 273
    invoke-static {p0, p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 275
    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result p0

    return p0
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 11

    .line 296
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 297
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result p0

    return p0

    :cond_b
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 299
    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result p0

    return p0
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 12

    .line 322
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 323
    invoke-static/range {p0 .. p5}, Landroidx/core/text/util/LinkifyCompat$Api24Impl;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result p0

    return p0

    .line 327
    :cond_b
    const-string v0, ""

    if-nez p2, :cond_10

    move-object p2, v0

    :cond_10
    const/4 v1, 0x1

    if-eqz p3, :cond_16

    .line 328
    array-length v2, p3

    if-ge v2, v1, :cond_18

    .line 329
    :cond_16
    sget-object p3, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    .line 332
    :cond_18
    array-length v2, p3

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 333
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    move p2, v3

    .line 334
    :goto_26
    array-length v4, p3

    if-ge p2, v4, :cond_3a

    .line 335
    aget-object v4, p3, p2

    add-int/lit8 p2, p2, 0x1

    if-nez v4, :cond_31

    move-object v4, v0

    goto :goto_37

    .line 336
    :cond_31
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    :goto_37
    aput-object v4, v2, p2

    goto :goto_26

    .line 340
    :cond_3a
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    move p2, v3

    .line 342
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_66

    .line 343
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p3

    .line 344
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 345
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz p4, :cond_58

    .line 349
    invoke-interface {p4, p0, p3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    goto :goto_59

    :cond_58
    move v5, v1

    :goto_59
    if-eqz v5, :cond_3f

    if-eqz v4, :cond_3f

    .line 353
    invoke-static {v4, v2, p1, p5}, Landroidx/core/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object p2

    .line 355
    invoke-static {p2, p3, v0, p0}, Landroidx/core/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    move p2, v1

    goto :goto_3f

    :cond_66
    return p2
.end method

.method public static addLinks(Landroid/widget/TextView;I)Z
    .registers 6

    .line 153
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 154
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    move-result p0

    return p0

    :cond_b
    const/4 v0, 0x0

    if-nez p1, :cond_f

    return v0

    .line 160
    :cond_f
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 162
    instance-of v2, v1, Landroid/text/Spannable;

    const/4 v3, 0x1

    if-eqz v2, :cond_24

    .line 163
    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, p1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 164
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    return v3

    .line 169
    :cond_24
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 171
    invoke-static {v1, p1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 172
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 173
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v3

    :cond_35
    return v0
.end method

.method private static applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .registers 5

    .line 428
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x21

    .line 430
    invoke-interface {p3, v0, p1, p2, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 475
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 476
    invoke-static {p0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 478
    :cond_b
    invoke-static {p0}, Landroidx/core/text/util/FindAddress;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .line 409
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 411
    :cond_4
    :goto_4
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 412
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 413
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    const/4 v2, 0x0

    .line 414
    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_1f

    .line 416
    invoke-interface {p4, p1, v0, v1}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1f
    if-eqz v2, :cond_4

    .line 417
    new-instance v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v3}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    .line 418
    invoke-static {v2, p3, p2, p5}, Landroidx/core/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 419
    iput v0, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 420
    iput v1, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 422
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_34
    return-void
.end method

.method private static gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .line 434
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 439
    :catch_5
    :goto_5
    :try_start_5
    invoke-static {p1}, Landroidx/core/text/util/LinkifyCompat;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 440
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_12

    goto :goto_45

    .line 446
    :cond_12
    new-instance v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v3}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    .line 447
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v2, v0

    .line 450
    iput v2, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    add-int/2addr v0, v4

    .line 451
    iput v0, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 452
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_26} :catch_45

    .line 458
    :try_start_26
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_26 .. :try_end_2c} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_26 .. :try_end_2c} :catch_45

    .line 463
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geo:0,0?q="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 464
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2c .. :try_end_44} :catch_45

    goto :goto_5

    :catch_45
    :cond_45
    :goto_45
    return-void
.end method

.method static synthetic lambda$static$0(Landroidx/core/text/util/LinkifyCompat$LinkSpec;Landroidx/core/text/util/LinkifyCompat$LinkSpec;)I
    .registers 4

    .line 60
    iget v0, p0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v1, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-ge v0, v1, :cond_8

    const/4 p0, -0x1

    return p0

    .line 64
    :cond_8
    iget v0, p0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v1, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-le v0, v1, :cond_10

    const/4 p0, 0x1

    return p0

    .line 68
    :cond_10
    iget p1, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget p0, p0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .registers 10

    if-eqz p3, :cond_6

    .line 380
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    move-object v0, p0

    .line 385
    array-length p0, p1

    const/4 p2, 0x0

    move p3, p2

    :goto_a
    if-ge p3, p0, :cond_46

    aget-object v3, p1, p3

    const/4 v4, 0x0

    .line 386
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_43

    const/4 v4, 0x0

    .line 390
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    const/4 p3, 0x1

    if-nez p0, :cond_47

    .line 391
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_43
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_46
    move p3, p2

    :cond_47
    :goto_47
    if-nez p3, :cond_60

    .line 398
    array-length p0, p1

    if-lez p0, :cond_60

    .line 399
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_60
    return-object v0
.end method

.method private static pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .line 483
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 484
    array-length v1, v0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_2c

    aget-object v4, v0, v3

    .line 485
    new-instance v5, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v5}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    .line 486
    iput-object v4, v5, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    .line 487
    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    iput v6, v5, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 488
    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    iput v4, v5, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 489
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 492
    :cond_2c
    sget-object v0, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 494
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_35
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_8f

    .line 498
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    add-int/lit8 v3, v2, 0x1

    .line 499
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 502
    iget v5, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v6, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-gt v5, v6, :cond_8d

    iget v5, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v6, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-le v5, v6, :cond_8d

    .line 503
    iget v5, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v6, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    const/4 v7, -0x1

    if-gt v5, v6, :cond_5c

    :goto_5a
    move v1, v3

    goto :goto_78

    .line 505
    :cond_5c
    iget v5, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v6, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v5, v6

    iget v6, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v8, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v6, v8

    if-le v5, v6, :cond_69

    goto :goto_5a

    .line 507
    :cond_69
    iget v5, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v1, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v5, v1

    iget v1, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v4, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v1, v4

    if-ge v5, v1, :cond_77

    move v1, v2

    goto :goto_78

    :cond_77
    move v1, v7

    :goto_78
    if-eq v1, v7, :cond_8d

    .line 512
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    iget-object v3, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    if-eqz v3, :cond_87

    .line 514
    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 516
    :cond_87
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    :cond_8d
    move v2, v3

    goto :goto_35

    :cond_8f
    return-void
.end method

.method private static shouldAddLinksFallbackToFramework()Z
    .registers 2

    .line 364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
