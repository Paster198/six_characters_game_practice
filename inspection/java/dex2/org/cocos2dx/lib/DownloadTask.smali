.class Lorg/cocos2dx/lib/DownloadTask;
.super Ljava/lang/Object;
.source "Cocos2dxDownloader.java"


# instance fields
.field bytesReceived:J

.field data:[B

.field handle:Lcom/loopj/android/http/RequestHandle;

.field handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

.field totalBytesExpected:J

.field totalBytesReceived:J


# direct methods
.method constructor <init>()V
    .registers 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lorg/cocos2dx/lib/DownloadTask;->handle:Lcom/loopj/android/http/RequestHandle;

    .line 141
    iput-object v0, p0, Lorg/cocos2dx/lib/DownloadTask;->handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .line 142
    invoke-virtual {p0}, Lorg/cocos2dx/lib/DownloadTask;->resetStatus()V

    return-void
.end method


# virtual methods
.method resetStatus()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 146
    iput-wide v0, p0, Lorg/cocos2dx/lib/DownloadTask;->bytesReceived:J

    .line 147
    iput-wide v0, p0, Lorg/cocos2dx/lib/DownloadTask;->totalBytesReceived:J

    .line 148
    iput-wide v0, p0, Lorg/cocos2dx/lib/DownloadTask;->totalBytesExpected:J

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lorg/cocos2dx/lib/DownloadTask;->data:[B

    return-void
.end method
