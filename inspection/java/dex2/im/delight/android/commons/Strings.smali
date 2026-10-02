.class public final Lim/delight/android/commons/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "\u2026"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    if-nez p0, :cond_6

    goto :goto_24

    .line 39
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v7, v1, v6

    move v3, v0

    :goto_11
    if-gt v3, v7, :cond_24

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 43
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    move-object p0, v1

    move-object p1, v4

    goto :goto_11

    :cond_24
    :goto_24
    return v0
.end method

.method public static ensureMaxLength(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 197
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_b

    return-object p0

    .line 201
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u2026"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static padLeft(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static padLeft(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_4
    invoke-static {p0, p1}, Lim/delight/android/commons/Strings;->padLeft(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x20

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static padRight(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static padRight(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_4
    invoke-static {p0, p1}, Lim/delight/android/commons/Strings;->padRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x20

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/String;

    new-array p1, p1, [C

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const-string p1, "\u0000"

    invoke-virtual {v0, p1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rot13(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 135
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 136
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_1c

    const/16 v3, 0x6d

    if-gt v2, v3, :cond_1c

    :goto_18
    add-int/lit8 v2, v2, 0xd

    :goto_1a
    int-to-char v2, v2

    goto :goto_39

    :cond_1c
    const/16 v3, 0x41

    if-lt v2, v3, :cond_25

    const/16 v3, 0x4d

    if-gt v2, v3, :cond_25

    goto :goto_18

    :cond_25
    const/16 v3, 0x6e

    if-lt v2, v3, :cond_30

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_30

    :goto_2d
    add-int/lit8 v2, v2, -0xd

    goto :goto_1a

    :cond_30
    const/16 v3, 0x4e

    if-lt v2, v3, :cond_39

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_39

    goto :goto_2d

    .line 151
    :cond_39
    :goto_39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 154
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitToChunks(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 8

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 166
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_26

    mul-int v3, v2, p1

    add-int v4, v3, p1

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_1d

    .line 175
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_23

    .line 178
    :cond_1d
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_26
    return-object v1
.end method
