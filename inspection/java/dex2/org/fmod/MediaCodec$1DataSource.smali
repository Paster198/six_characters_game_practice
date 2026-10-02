.class Lorg/fmod/MediaCodec$1DataSource;
.super Ljava/lang/Object;
.source "MediaCodec.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


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

    .line 57
    iput-object p1, p0, Lorg/fmod/MediaCodec$1DataSource;->this$0:Lorg/fmod/MediaCodec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 61
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "readAt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lorg/fmod/MediaCodec$1DataSource;->this$0:Lorg/fmod/MediaCodec;

    # getter for: Lorg/fmod/MediaCodec;->mCodecPtr:J
    invoke-static {p1}, Lorg/fmod/MediaCodec;->access$000(Lorg/fmod/MediaCodec;)J

    move-result-wide v0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p1, 0x1

    aget-object p1, p3, p1

    move-object v4, p1

    check-cast v4, [B

    const/4 p1, 0x2

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v5, 0x0

    # invokes: Lorg/fmod/MediaCodec;->fmodReadAt(JJ[BII)I
    invoke-static/range {v0 .. v6}, Lorg/fmod/MediaCodec;->access$100(JJ[BII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 62
    :cond_34
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "getSize"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lorg/fmod/MediaCodec$1DataSource;->this$0:Lorg/fmod/MediaCodec;

    # getter for: Lorg/fmod/MediaCodec;->mCodecPtr:J
    invoke-static {p1}, Lorg/fmod/MediaCodec;->access$000(Lorg/fmod/MediaCodec;)J

    move-result-wide p1

    # invokes: Lorg/fmod/MediaCodec;->fmodGetSize(J)J
    invoke-static {p1, p2}, Lorg/fmod/MediaCodec;->access$200(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 63
    :cond_4f
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "close"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_5d

    return-object p3

    .line 65
    :cond_5d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MediaCodec::DataSource::invoke : Unrecognised method found: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fmod"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method
