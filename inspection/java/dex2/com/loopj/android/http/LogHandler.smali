.class public Lcom/loopj/android/http/LogHandler;
.super Ljava/lang/Object;
.source "LogHandler.java"

# interfaces
.implements Lcom/loopj/android/http/LogInterface;


# instance fields
.field mLoggingEnabled:Z

.field mLoggingLevel:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/loopj/android/http/LogHandler;->mLoggingEnabled:Z

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lcom/loopj/android/http/LogHandler;->mLoggingLevel:I

    return-void
.end method

.method private checkedWtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 72
    invoke-static {p1, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    .line 87
    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/LogHandler;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x3

    .line 92
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/LogHandler;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x6

    .line 117
    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/LogHandler;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x6

    .line 122
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/LogHandler;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getLoggingLevel()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/loopj/android/http/LogHandler;->mLoggingLevel:I

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x4

    .line 97
    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/LogHandler;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x4

    .line 102
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/LogHandler;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isLoggingEnabled()Z
    .registers 2

    .line 14
    iget-boolean v0, p0, Lcom/loopj/android/http/LogHandler;->mLoggingEnabled:Z

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/LogHandler;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 42
    invoke-virtual {p0}, Lcom/loopj/android/http/LogHandler;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/LogHandler;->shouldLog(I)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x2

    if-eq p1, v0, :cond_44

    const/4 v0, 0x3

    if-eq p1, v0, :cond_40

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_38

    const/4 v0, 0x6

    if-eq p1, v0, :cond_34

    const/16 v0, 0x8

    if-eq p1, v0, :cond_20

    goto :goto_47

    .line 57
    :cond_20
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p1, v0, :cond_30

    .line 58
    invoke-direct {p0, p2, p3, p4}, Lcom/loopj/android/http/LogHandler;->checkedWtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 60
    :cond_30
    invoke-static {p2, p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 51
    :cond_34
    invoke-static {p2, p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 48
    :cond_38
    invoke-static {p2, p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 64
    :cond_3c
    invoke-static {p2, p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 54
    :cond_40
    invoke-static {p2, p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 45
    :cond_44
    invoke-static {p2, p3, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_47
    :goto_47
    return-void
.end method

.method public setLoggingEnabled(Z)V
    .registers 2

    .line 19
    iput-boolean p1, p0, Lcom/loopj/android/http/LogHandler;->mLoggingEnabled:Z

    return-void
.end method

.method public setLoggingLevel(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/loopj/android/http/LogHandler;->mLoggingLevel:I

    return-void
.end method

.method public shouldLog(I)Z
    .registers 3

    .line 34
    iget v0, p0, Lcom/loopj/android/http/LogHandler;->mLoggingLevel:I

    if-lt p1, v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    .line 77
    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/LogHandler;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x2

    .line 82
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/LogHandler;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x5

    .line 107
    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/LogHandler;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x5

    .line 112
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/LogHandler;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public wtf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x8

    .line 127
    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/LogHandler;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const/16 v0, 0x8

    .line 132
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/LogHandler;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
