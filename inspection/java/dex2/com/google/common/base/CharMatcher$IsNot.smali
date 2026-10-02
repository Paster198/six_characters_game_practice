.class final Lcom/google/common/base/CharMatcher$IsNot;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsNot"
.end annotation


# instance fields
.field private final match:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    .line 1656
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>()V

    .line 1657
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    return-void
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3

    .line 1667
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;->and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method public matches(C)Z
    .registers 3

    .line 1662
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    if-eq p1, v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .registers 2

    .line 1684
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher$IsNot;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3

    .line 1672
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/google/common/base/CharMatcher$IsNot;->any()Lcom/google/common/base/CharMatcher;

    move-result-object p1

    return-object p1

    :cond_d
    return-object p0
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 1678
    iget-char v1, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    .line 1679
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1689
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    # invokes: Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->access$100(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CharMatcher.isNot(\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
