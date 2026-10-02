.class public Lcz/msebera/android/httpclient/client/utils/Rfc3492Idn;
.super Ljava/lang/Object;
.source "Rfc3492Idn.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/utils/Idn;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACE_PREFIX:Ljava/lang/String; = "xn--"

.field private static final base:I = 0x24

.field private static final damp:I = 0x2bc

.field private static final delimiter:C = '-'

.field private static final initial_bias:I = 0x48

.field private static final initial_n:I = 0x80

.field private static final skew:I = 0x26

.field private static final tmax:I = 0x1a

.field private static final tmin:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adapt(IIZ)I
    .registers 4

    if-eqz p3, :cond_5

    .line 56
    div-int/lit16 p1, p1, 0x2bc

    goto :goto_7

    .line 58
    :cond_5
    div-int/lit8 p1, p1, 0x2

    .line 60
    :goto_7
    div-int p2, p1, p2

    add-int/2addr p1, p2

    const/4 p2, 0x0

    :goto_b
    const/16 p3, 0x1c7

    if-le p1, p3, :cond_14

    .line 63
    div-int/lit8 p1, p1, 0x23

    add-int/lit8 p2, p2, 0x24

    goto :goto_b

    :cond_14
    mul-int/lit8 p3, p1, 0x24

    add-int/lit8 p1, p1, 0x26

    .line 66
    div-int/2addr p3, p1

    add-int/2addr p2, p3

    return p2
.end method

.method private digit(C)I
    .registers 5

    const/16 v0, 0x41

    if-lt p1, v0, :cond_a

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_a

    sub-int/2addr p1, v0

    return p1

    :cond_a
    const/16 v0, 0x61

    if-lt p1, v0, :cond_14

    const/16 v1, 0x7a

    if-gt p1, v1, :cond_14

    sub-int/2addr p1, v0

    return p1

    :cond_14
    const/16 v0, 0x30

    if-lt p1, v0, :cond_1f

    const/16 v0, 0x39

    if-gt p1, v0, :cond_1f

    add-int/lit8 p1, p1, -0x16

    return p1

    .line 79
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal digit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x2d

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/16 v4, 0x80

    const/4 v5, 0x0

    const/16 v6, 0x48

    if-eq v1, v2, :cond_24

    .line 107
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/2addr v1, v3

    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_24
    move v1, v5

    .line 111
    :goto_25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_81

    const/16 v2, 0x24

    move v7, v1

    move v8, v3

    .line 115
    :goto_2f
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_36

    goto :goto_56

    .line 118
    :cond_36
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 119
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-direct {p0, v9}, Lcz/msebera/android/httpclient/client/utils/Rfc3492Idn;->digit(C)I

    move-result v9

    mul-int v10, v9, v8

    add-int/2addr v7, v10

    add-int/lit8 v10, v6, 0x1

    if-gt v2, v10, :cond_4b

    move v10, v3

    goto :goto_54

    :cond_4b
    add-int/lit8 v10, v6, 0x1a

    if-lt v2, v10, :cond_52

    const/16 v10, 0x1a

    goto :goto_54

    :cond_52
    sub-int v10, v2, v6

    :goto_54
    if-ge v9, v10, :cond_7b

    :goto_56
    sub-int v2, v7, v1

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/2addr v6, v3

    if-nez v1, :cond_61

    move v1, v3

    goto :goto_62

    :cond_61
    move v1, v5

    :goto_62
    invoke-direct {p0, v2, v6, v1}, Lcz/msebera/android/httpclient/client/utils/Rfc3492Idn;->adapt(IIZ)I

    move-result v6

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v1, v3

    div-int v1, v7, v1

    add-int/2addr v4, v1

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v1, v3

    rem-int/2addr v7, v1

    int-to-char v1, v4

    .line 139
    invoke-virtual {v0, v7, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v7, 0x1

    goto :goto_25

    :cond_7b
    rsub-int/lit8 v9, v10, 0x24

    mul-int/2addr v8, v9

    add-int/lit8 v2, v2, 0x24

    goto :goto_2f

    .line 142
    :cond_81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 85
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "."

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_10
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 87
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_25

    const/16 v2, 0x2e

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_25
    const-string v2, "xn--"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x4

    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/client/utils/Rfc3492Idn;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    :cond_36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 96
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
