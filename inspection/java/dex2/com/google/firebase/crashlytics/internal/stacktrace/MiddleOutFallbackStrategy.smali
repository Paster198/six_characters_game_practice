.class public Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;
.super Ljava/lang/Object;
.source "MiddleOutFallbackStrategy.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;


# instance fields
.field private final maximumStackSize:I

.field private final middleOutStrategy:Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;

.field private final trimmingStrategies:[Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;


# direct methods
.method public varargs constructor <init>(I[Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->maximumStackSize:I

    .line 29
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->trimmingStrategies:[Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;

    .line 30
    new-instance p2, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;

    invoke-direct {p2, p1}, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;-><init>(I)V

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->middleOutStrategy:Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;

    return-void
.end method


# virtual methods
.method public getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .registers 9

    .line 35
    array-length v0, p1

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-gt v0, v1, :cond_6

    return-object p1

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->trimmingStrategies:[Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;

    array-length v1, v0

    const/4 v2, 0x0

    move-object v3, p1

    :goto_b
    if-ge v2, v1, :cond_1c

    aget-object v4, v0, v2

    .line 41
    array-length v5, v3

    iget v6, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-gt v5, v6, :cond_15

    goto :goto_1c

    .line 45
    :cond_15
    invoke-interface {v4, p1}, Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 48
    :cond_1c
    :goto_1c
    array-length p1, v3

    iget v0, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-le p1, v0, :cond_28

    .line 49
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutFallbackStrategy;->middleOutStrategy:Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;

    invoke-virtual {p1, v3}, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object p1

    return-object p1

    :cond_28
    return-object v3
.end method
