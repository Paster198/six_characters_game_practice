.class public final Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;
.super Ljava/lang/Object;
.source "PublicSuffixListParser.java"


# static fields
.field private static final MAX_LINE_LEN:I = 0x100


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readLine(Ljava/io/Reader;Ljava/lang/StringBuilder;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v1, v0

    .line 95
    :cond_5
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v2, v4, :cond_28

    int-to-char v5, v2

    const/16 v6, 0xa

    if-ne v5, v6, :cond_13

    goto :goto_28

    .line 101
    :cond_13
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v1, v3

    :cond_1a
    if-nez v1, :cond_1f

    .line 105
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    :cond_1f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_5

    return v0

    :cond_28
    :goto_28
    if-eq v2, v4, :cond_2b

    return v3

    :cond_2b
    return v0
.end method


# virtual methods
.method public parse(Ljava/io/Reader;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x1

    move v4, v3

    :goto_18
    if-eqz v4, :cond_54

    .line 65
    invoke-direct {p0, v2, p1}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;->readLine(Ljava/io/Reader;Ljava/lang/StringBuilder;)Z

    move-result v4

    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_29

    goto :goto_18

    .line 70
    :cond_29
    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    goto :goto_18

    .line 73
    :cond_32
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 74
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 77
    :cond_3e
    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 79
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_4a
    if-eqz v6, :cond_50

    .line 83
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 85
    :cond_50
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 88
    :cond_54
    new-instance p1, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;

    invoke-direct {p1, v0, v1}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method
