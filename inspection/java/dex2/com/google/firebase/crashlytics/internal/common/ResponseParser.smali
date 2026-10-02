.class public Lcom/google/firebase/crashlytics/internal/common/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# static fields
.field public static final ResponseActionDiscard:I = 0x0

.field public static final ResponseActionRetry:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(I)I
    .registers 4

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-lt p0, v0, :cond_a

    const/16 v0, 0x12b

    if-gt p0, v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x12c

    const/4 v2, 0x1

    if-lt p0, v0, :cond_14

    const/16 v0, 0x18f

    if-gt p0, v0, :cond_14

    return v2

    :cond_14
    const/16 v0, 0x190

    if-lt p0, v0, :cond_1d

    const/16 v0, 0x1f3

    if-gt p0, v0, :cond_1d

    return v1

    :cond_1d
    return v2
.end method
