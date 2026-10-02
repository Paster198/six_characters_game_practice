.class public final Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .registers 9

    .line 163
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    .line 164
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    .line 166
    :cond_6
    :goto_6
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_19

    .line 168
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 170
    :cond_19
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x2c

    const/16 v4, 0x2b

    const/16 v5, 0x3b

    const/16 v6, 0x20

    if-eq v2, v6, :cond_5e

    if-eq v2, v5, :cond_51

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_3e

    if-eq v2, v4, :cond_51

    if-eq v2, v3, :cond_51

    .line 197
    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    aput-char v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    .line 198
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_6

    .line 178
    :cond_3e
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    .line 179
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_6

    .line 175
    :cond_51
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 184
    :cond_5e
    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    iput v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->cur:I

    add-int/lit8 v0, v0, 0x1

    .line 185
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v2, 0x1

    .line 186
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    aput-char v6, v1, v2

    .line 187
    :goto_6c
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_85

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v7, v2, v0

    if-ne v7, v6, :cond_85

    .line 188
    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    aput-char v6, v2, v1

    add-int/lit8 v0, v0, 0x1

    .line 187
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_6c

    :cond_85
    if-eq v0, v1, :cond_91

    .line 190
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    if-eq v0, v3, :cond_91

    if-eq v0, v4, :cond_91

    if-ne v0, v5, :cond_6

    .line 193
    :cond_91
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->cur:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private getByte(I)I
    .registers 11

    add-int/lit8 v0, p1, 0x1

    .line 275
    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_6e

    .line 279
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char p1, v1, p1

    const/16 v3, 0x46

    const/16 v4, 0x66

    const/16 v5, 0x41

    const/16 v6, 0x39

    const/16 v7, 0x61

    const/16 v8, 0x30

    if-lt p1, v8, :cond_1e

    if-gt p1, v6, :cond_1e

    sub-int/2addr p1, v8

    goto :goto_2b

    :cond_1e
    if-lt p1, v7, :cond_25

    if-gt p1, v4, :cond_25

    add-int/lit8 p1, p1, -0x57

    goto :goto_2b

    :cond_25
    if-lt p1, v5, :cond_59

    if-gt p1, v3, :cond_59

    add-int/lit8 p1, p1, -0x37

    .line 289
    :goto_2b
    aget-char v0, v1, v0

    if-lt v0, v8, :cond_33

    if-gt v0, v6, :cond_33

    sub-int/2addr v0, v8

    goto :goto_40

    :cond_33
    if-lt v0, v7, :cond_3a

    if-gt v0, v4, :cond_3a

    add-int/lit8 v0, v0, -0x57

    goto :goto_40

    :cond_3a
    if-lt v0, v5, :cond_44

    if-gt v0, v3, :cond_44

    add-int/lit8 v0, v0, -0x37

    :goto_40
    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    return p1

    .line 297
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_59
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 276
    :cond_6e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getEscaped()C
    .registers 4

    .line 204
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 205
    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_31

    .line 208
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_30

    const/16 v1, 0x25

    if-eq v0, v1, :cond_30

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_30

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_30

    const/16 v1, 0x22

    if-eq v0, v1, :cond_30

    const/16 v1, 0x23

    if-eq v0, v1, :cond_30

    packed-switch v0, :pswitch_data_48

    packed-switch v0, :pswitch_data_52

    .line 227
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->getUTF8()C

    move-result v0

    :cond_30
    :pswitch_30
    return v0

    .line 206
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_48
    .packed-switch 0x2a
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x3b
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method private getUTF8()C
    .registers 10

    .line 233
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->getByte(I)I

    move-result v0

    .line 234
    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_12

    int-to-char v0, v0

    return v0

    :cond_12
    const/16 v3, 0xc0

    const/16 v4, 0x3f

    if-lt v0, v3, :cond_62

    const/16 v3, 0xf7

    if-gt v0, v3, :cond_62

    const/16 v3, 0xdf

    if-gt v0, v3, :cond_24

    and-int/lit8 v0, v0, 0x1f

    move v3, v2

    goto :goto_2f

    :cond_24
    const/16 v3, 0xef

    if-gt v0, v3, :cond_2c

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x2

    goto :goto_2f

    :cond_2c
    and-int/lit8 v0, v0, 0x7

    const/4 v3, 0x3

    :goto_2f
    const/4 v5, 0x0

    :goto_30
    if-ge v5, v3, :cond_60

    .line 251
    iget v6, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 252
    iget v8, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-eq v7, v8, :cond_5f

    iget-object v8, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v7, v8, v7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_45

    goto :goto_5f

    :cond_45
    add-int/lit8 v6, v6, 0x2

    .line 255
    iput v6, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 256
    invoke-direct {p0, v6}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->getByte(I)I

    move-result v6

    .line 257
    iget v7, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/2addr v7, v2

    iput v7, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v1, :cond_57

    return v4

    :cond_57
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_5f
    :goto_5f
    return v4

    :cond_60
    int-to-char v0, v0

    return v0

    :cond_62
    return v4
.end method

.method private hexAV()Ljava/lang/String;
    .registers 7

    .line 121
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    const-string v3, "Unexpected end of DN: "

    if-ge v1, v2, :cond_96

    .line 125
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    .line 126
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 130
    :goto_10
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_54

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_54

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_54

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_27

    goto :goto_54

    :cond_27
    const/16 v4, 0x20

    if-ne v2, v4, :cond_42

    .line 136
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    .line 137
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 140
    :goto_31
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_56

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v4, :cond_56

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_31

    :cond_42
    const/16 v4, 0x41

    if-lt v2, v4, :cond_4f

    const/16 v4, 0x46

    if-gt v2, v4, :cond_4f

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    .line 144
    aput-char v2, v1, v0

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    .line 146
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_10

    .line 132
    :cond_54
    :goto_54
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    .line 150
    :cond_56
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_81

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_81

    .line 155
    div-int/lit8 v2, v0, 0x2

    new-array v3, v2, [B

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    :goto_69
    if-ge v4, v2, :cond_77

    .line 157
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->getByte(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 159
    :cond_77
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 152
    :cond_81
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_96
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextAT()Ljava/lang/String;
    .registers 7

    .line 49
    :goto_0
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_13

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v3, v3, v0

    if-ne v3, v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_0

    :cond_13
    if-ne v0, v1, :cond_17

    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_17
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    .line 57
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 58
    :goto_1d
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_32

    iget-object v4, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v4, v4, v0

    if-eq v4, v3, :cond_32

    if-eq v4, v2, :cond_32

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_1d

    .line 62
    :cond_32
    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_d2

    .line 66
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    .line 69
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_6f

    .line 70
    :goto_3e
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_51

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v5, v5, v0

    if-eq v5, v3, :cond_51

    if-ne v5, v2, :cond_51

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_3e

    .line 72
    :cond_51
    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v5, v5, v0

    if-ne v5, v3, :cond_5a

    if-eq v0, v1, :cond_5a

    goto :goto_6f

    .line 73
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_6f
    :goto_6f
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 79
    :goto_75
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_86

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_86

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_75

    .line 83
    :cond_86
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-le v0, v2, :cond_c5

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v0, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_c5

    aget-char v3, v0, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_a2

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_c5

    :cond_a2
    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_b2

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_c5

    :cond_b2
    add-int/lit8 v3, v1, 0x2

    aget-char v3, v0, v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_c2

    add-int/lit8 v3, v1, 0x2

    aget-char v0, v0, v3

    const/16 v3, 0x64

    if-ne v0, v3, :cond_c5

    :cond_c2
    add-int/2addr v1, v2

    .line 87
    iput v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    .line 89
    :cond_c5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 63
    :cond_d2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private quotedAV()Ljava/lang/String;
    .registers 5

    .line 93
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 94
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    .line 95
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    .line 97
    :goto_a
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_5a

    .line 100
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_3c

    add-int/lit8 v0, v0, 0x1

    .line 102
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 115
    :goto_1c
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_2f

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2f

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    goto :goto_1c

    .line 117
    :cond_2f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_3c
    const/16 v0, 0x5c

    if-ne v2, v0, :cond_49

    .line 105
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_4d

    .line 108
    :cond_49
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    aput-char v2, v1, v0

    .line 110
    :goto_4d
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 111
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    goto :goto_a

    .line 98
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    .line 309
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 310
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    .line 311
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    .line 312
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->cur:I

    .line 313
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    .line 314
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return-object v1

    .line 320
    :cond_19
    :goto_19
    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-ne v2, v3, :cond_20

    return-object v1

    .line 323
    :cond_20
    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v2, v3, v2

    const/16 v3, 0x22

    const/16 v4, 0x3b

    const/16 v5, 0x2c

    const/16 v6, 0x2b

    if-eq v2, v3, :cond_45

    const/16 v3, 0x23

    if-eq v2, v3, :cond_40

    if-eq v2, v6, :cond_3d

    if-eq v2, v5, :cond_3d

    if-eq v2, v4, :cond_3d

    .line 336
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    .line 334
    :cond_3d
    const-string v2, ""

    goto :goto_49

    .line 328
    :cond_40
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    .line 325
    :cond_45
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    .line 341
    :goto_49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    return-object v2

    .line 344
    :cond_50
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-lt v0, v2, :cond_57

    return-object v1

    .line 347
    :cond_57
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v2, v2, v0

    const-string v3, "Malformed DN: "

    if-eq v2, v5, :cond_7a

    if-ne v2, v4, :cond_62

    goto :goto_7a

    :cond_62
    if-ne v2, v6, :cond_65

    goto :goto_7a

    .line 349
    :cond_65
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7a
    :goto_7a
    add-int/lit8 v0, v0, 0x1

    .line 351
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 352
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_85

    goto :goto_19

    .line 354
    :cond_85
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAllMostSpecificFirst(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 366
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 367
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->beg:I

    .line 368
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->end:I

    .line 369
    iput v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->cur:I

    .line 370
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    .line 371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 372
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    return-object v0

    .line 376
    :cond_1c
    :goto_1c
    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-ge v2, v3, :cond_a9

    .line 378
    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v2, v3, v2

    const/16 v3, 0x22

    const/16 v4, 0x3b

    const/16 v5, 0x2c

    const/16 v6, 0x2b

    if-eq v2, v3, :cond_47

    const/16 v3, 0x23

    if-eq v2, v3, :cond_42

    if-eq v2, v6, :cond_3f

    if-eq v2, v5, :cond_3f

    if-eq v2, v4, :cond_3f

    .line 391
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_4b

    .line 389
    :cond_3f
    const-string v2, ""

    goto :goto_4b

    .line 383
    :cond_42
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_4b

    .line 380
    :cond_47
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    .line 396
    :goto_4b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 397
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    :cond_5c
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_5f
    iget v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    iget v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->length:I

    if-lt v1, v2, :cond_66

    return-object v0

    .line 405
    :cond_66
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->chars:[C

    aget-char v2, v2, v1

    const-string v3, "Malformed DN: "

    if-eq v2, v5, :cond_89

    if-ne v2, v4, :cond_71

    goto :goto_89

    :cond_71
    if-ne v2, v6, :cond_74

    goto :goto_89

    .line 407
    :cond_74
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_89
    :goto_89
    add-int/lit8 v1, v1, 0x1

    .line 409
    iput v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->pos:I

    .line 410
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_94

    goto :goto_1c

    .line 412
    :cond_94
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a9
    return-object v0
.end method
