.class public Lcom/google/android/gms/analytics/ExceptionReporter;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final zza:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzb:Lcom/google/android/gms/analytics/Tracker;

.field private final zzc:Landroid/content/Context;

.field private zzd:Lcom/google/android/gms/analytics/ExceptionParser;

.field private zze:Lcom/google/android/gms/analytics/GoogleAnalytics;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4c

    if-eqz p3, :cond_44

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zza:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zzb:Lcom/google/android/gms/analytics/Tracker;

    new-instance p1, Lcom/google/android/gms/analytics/StandardExceptionParser;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p3, v0}, Lcom/google/android/gms/analytics/StandardExceptionParser;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zzd:Lcom/google/android/gms/analytics/ExceptionParser;

    .line 4
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zzc:Landroid/content/Context;

    if-nez p2, :cond_22

    const-string p1, "null"

    goto :goto_2a

    .line 5
    :cond_22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_2a
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "ExceptionReporter created, original handler is "

    if-eqz p2, :cond_3b

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 6
    :cond_3b
    new-instance p1, Ljava/lang/String;

    .line 5
    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 6
    :goto_40
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzfa;->zzd(Ljava/lang/String;)V

    return-void

    .line 1
    :cond_44
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context cannot be null"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 0
    :cond_4c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "tracker cannot be null"

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getExceptionParser()Lcom/google/android/gms/analytics/ExceptionParser;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zzd:Lcom/google/android/gms/analytics/ExceptionParser;

    return-object v0
.end method

.method public setExceptionParser(Lcom/google/android/gms/analytics/ExceptionParser;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zzd:Lcom/google/android/gms/analytics/ExceptionParser;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zzd:Lcom/google/android/gms/analytics/ExceptionParser;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zzd:Lcom/google/android/gms/analytics/ExceptionParser;

    .line 2
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/analytics/ExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 3
    :cond_13
    const-string v0, "UncaughtException"

    :goto_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Reporting uncaught exception: "

    if-eqz v2, :cond_26

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 12
    :cond_26
    new-instance v1, Ljava/lang/String;

    .line 3
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2b
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzfa;->zzd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zzb:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    .line 4
    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zze:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zzc:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zze:Lcom/google/android/gms/analytics/GoogleAnalytics;

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zze:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zza;->zzb()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzf()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbq;->zzn()Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zza:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_6d

    const-string v0, "Passing exception to the original handler"

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfa;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zza:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 12
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_6d
    return-void
.end method

.method final zza()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->zza:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method
