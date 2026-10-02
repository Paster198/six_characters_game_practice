.class Lcom/google/common/escape/Escapers$2;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/escape/Escapers;->wrap(Lcom/google/common/escape/CharEscaper;)Lcom/google/common/escape/UnicodeEscaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$escaper:Lcom/google/common/escape/CharEscaper;


# direct methods
.method constructor <init>(Lcom/google/common/escape/CharEscaper;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    return-void
.end method


# virtual methods
.method protected escape(I)[C
    .registers 10
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_c

    .line 235
    iget-object v0, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object p1

    return-object p1

    :cond_c
    const/4 v0, 0x2

    .line 241
    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 242
    invoke-static {p1, v0, v1}, Ljava/lang/Character;->toChars(I[CI)I

    .line 243
    iget-object p1, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    aget-char v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object p1

    .line 244
    iget-object v2, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    const/4 v3, 0x1

    aget-char v4, v0, v3

    invoke-virtual {v2, v4}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v2

    if-nez p1, :cond_2a

    if-nez v2, :cond_2a

    const/4 p1, 0x0

    return-object p1

    :cond_2a
    if-eqz p1, :cond_2e

    .line 255
    array-length v4, p1

    goto :goto_2f

    :cond_2e
    move v4, v3

    :goto_2f
    if-eqz v2, :cond_33

    .line 256
    array-length v5, v2

    goto :goto_34

    :cond_33
    move v5, v3

    :goto_34
    add-int/2addr v5, v4

    .line 257
    new-array v5, v5, [C

    if-eqz p1, :cond_44

    move v6, v1

    .line 260
    :goto_3a
    array-length v7, p1

    if-ge v6, v7, :cond_48

    .line 261
    aget-char v7, p1, v6

    aput-char v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    .line 264
    :cond_44
    aget-char p1, v0, v1

    aput-char p1, v5, v1

    :cond_48
    if-eqz v2, :cond_57

    .line 267
    :goto_4a
    array-length p1, v2

    if-ge v1, p1, :cond_56

    add-int p1, v4, v1

    .line 268
    aget-char v0, v2, v1

    aput-char v0, v5, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_56
    return-object v5

    .line 271
    :cond_57
    aget-char p1, v0, v3

    aput-char p1, v5, v4

    return-object v5
.end method
