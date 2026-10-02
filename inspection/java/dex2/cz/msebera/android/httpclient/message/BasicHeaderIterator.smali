.class public Lcz/msebera/android/httpclient/message/BasicHeaderIterator;
.super Ljava/lang/Object;
.source "BasicHeaderIterator.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HeaderIterator;


# instance fields
.field protected final allHeaders:[Lcz/msebera/android/httpclient/Header;

.field protected currentIndex:I

.field protected headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Lcz/msebera/android/httpclient/Header;Ljava/lang/String;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "Header array"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcz/msebera/android/httpclient/Header;

    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;->allHeaders:[Lcz/msebera/android/httpclient/Header;

    .line 79
    iput-object p2, p0, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    const/4 p1, -0x1

    .line 80
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;->findNext(I)I

    move-result p1

    iput p1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;->currentIndex:I

    return-void
.end method


# virtual methods
.method protected filterHeader(I)Z
    .registers 4

    .line 118
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;->allHeaders:[Lcz/msebera/android/httpclient/Header;

    aget-object p1, v1, p1

    .line 119
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method protected findNext(I)I
    .registers 5

    const/4 v0, -0x1

    if-ge p1, v0, :cond_4

    return v0

    .line 99
    :cond_4
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;->allHeaders:[Lcz/msebera/android/httpclient/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_a
    if-nez v2, :cond_15

    if-ge p1, v1, :cond_15

    add-int/lit8 p1, p1, 0x1

    .line 103
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;->filterHeader(I)Z

    move-result v2

    goto :goto_a

    :cond_15
    if-eqz v2, :cond_18

    return p1

    :cond_18
    return v0
.end method

.method public hasNext()Z
    .registers 2

    .line 126
    iget v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;->currentIndex:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;->nextHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public nextHeader()Lcz/msebera/android/httpclient/Header;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 141
    iget v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;->currentIndex:I

    if-ltz v0, :cond_f

    .line 146
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;->currentIndex:I

    .line 148
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;->allHeaders:[Lcz/msebera/android/httpclient/Header;

    aget-object v0, v1, v0

    return-object v0

    .line 143
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing headers is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
