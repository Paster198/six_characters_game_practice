.class final Lcom/google/firebase/crashlytics/internal/metadata/LogFileManager$NoopLogStore;
.super Ljava/lang/Object;
.source "LogFileManager.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/metadata/FileLogStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/metadata/LogFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoopLogStore"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/metadata/LogFileManager$1;)V
    .registers 2

    .line 94
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/metadata/LogFileManager$NoopLogStore;-><init>()V

    return-void
.end method


# virtual methods
.method public closeLogFile()V
    .registers 1

    return-void
.end method

.method public deleteLogFile()V
    .registers 1

    return-void
.end method

.method public getLogAsBytes()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogAsString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToLog(JLjava/lang/String;)V
    .registers 4

    return-void
.end method
