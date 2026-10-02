.class public Lcom/google/android/datatransport/runtime/time/WallTimeClock;
.super Ljava/lang/Object;
.source "WallTimeClock.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTime()J
    .registers 3

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
