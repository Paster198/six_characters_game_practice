.class Lorg/fmod/MediaCodec$2DataSource;
.super Landroid/media/MediaDataSource;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fmod/MediaCodec;->init(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataSource"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fmod/MediaCodec;


# direct methods
.method constructor <init>(Lorg/fmod/MediaCodec;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lorg/fmod/MediaCodec$2DataSource;->this$0:Lorg/fmod/MediaCodec;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public getSize()J
    .registers 3

    .line 89
    iget-object v0, p0, Lorg/fmod/MediaCodec$2DataSource;->this$0:Lorg/fmod/MediaCodec;

    # getter for: Lorg/fmod/MediaCodec;->mCodecPtr:J
    invoke-static {v0}, Lorg/fmod/MediaCodec;->access$000(Lorg/fmod/MediaCodec;)J

    move-result-wide v0

    # invokes: Lorg/fmod/MediaCodec;->fmodGetSize(J)J
    invoke-static {v0, v1}, Lorg/fmod/MediaCodec;->access$200(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readAt(J[BII)I
    .registers 14

    .line 88
    iget-object v0, p0, Lorg/fmod/MediaCodec$2DataSource;->this$0:Lorg/fmod/MediaCodec;

    # getter for: Lorg/fmod/MediaCodec;->mCodecPtr:J
    invoke-static {v0}, Lorg/fmod/MediaCodec;->access$000(Lorg/fmod/MediaCodec;)J

    move-result-wide v1

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    # invokes: Lorg/fmod/MediaCodec;->fmodReadAt(JJ[BII)I
    invoke-static/range {v1 .. v7}, Lorg/fmod/MediaCodec;->access$100(JJ[BII)I

    move-result p1

    return p1
.end method
