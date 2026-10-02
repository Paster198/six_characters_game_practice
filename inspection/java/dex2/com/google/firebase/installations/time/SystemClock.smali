.class public Lcom/google/firebase/installations/time/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lcom/google/firebase/installations/time/Clock;


# static fields
.field private static singleton:Lcom/google/firebase/installations/time/SystemClock;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/installations/time/SystemClock;
    .registers 1

    .line 34
    sget-object v0, Lcom/google/firebase/installations/time/SystemClock;->singleton:Lcom/google/firebase/installations/time/SystemClock;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Lcom/google/firebase/installations/time/SystemClock;

    invoke-direct {v0}, Lcom/google/firebase/installations/time/SystemClock;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/time/SystemClock;->singleton:Lcom/google/firebase/installations/time/SystemClock;

    .line 37
    :cond_b
    sget-object v0, Lcom/google/firebase/installations/time/SystemClock;->singleton:Lcom/google/firebase/installations/time/SystemClock;

    return-object v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
