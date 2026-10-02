.class public Lorg/fmod/MediaCodec;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# instance fields
.field private mChannelCount:I

.field private mCodecPtr:J

.field private mCurrentOutputBufferIndex:I

.field private mDataSourceProxy:Ljava/lang/Object;

.field private mDecoder:Landroid/media/MediaCodec;

.field private mExtractor:Landroid/media/MediaExtractor;

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mInputFinished:Z

.field private mLength:J

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mOutputFinished:Z

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lorg/fmod/MediaCodec;->mCodecPtr:J

    .line 24
    iput-wide v0, p0, Lorg/fmod/MediaCodec;->mLength:J

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lorg/fmod/MediaCodec;->mSampleRate:I

    .line 26
    iput v0, p0, Lorg/fmod/MediaCodec;->mChannelCount:I

    .line 27
    iput-boolean v0, p0, Lorg/fmod/MediaCodec;->mInputFinished:Z

    .line 28
    iput-boolean v0, p0, Lorg/fmod/MediaCodec;->mOutputFinished:Z

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    .line 30
    iput-object v0, p0, Lorg/fmod/MediaCodec;->mDataSourceProxy:Ljava/lang/Object;

    .line 31
    iput-object v0, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    .line 32
    iput-object v0, p0, Lorg/fmod/MediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 33
    iput-object v0, p0, Lorg/fmod/MediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    return-void
.end method

.method static synthetic access$000(Lorg/fmod/MediaCodec;)J
    .registers 3

    .line 18
    iget-wide v0, p0, Lorg/fmod/MediaCodec;->mCodecPtr:J

    return-wide v0
.end method

.method static synthetic access$100(JJ[BII)I
    .registers 7

    .line 18
    invoke-static/range {p0 .. p6}, Lorg/fmod/MediaCodec;->fmodReadAt(JJ[BII)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(J)J
    .registers 2

    .line 18
    invoke-static {p0, p1}, Lorg/fmod/MediaCodec;->fmodGetSize(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static native fmodGetSize(J)J
.end method

.method private static native fmodReadAt(JJ[BII)I
.end method


# virtual methods
.method public getChannelCount()I
    .registers 2

    .line 38
    iget v0, p0, Lorg/fmod/MediaCodec;->mChannelCount:I

    return v0
.end method

.method public getLength()J
    .registers 3

    .line 36
    iget-wide v0, p0, Lorg/fmod/MediaCodec;->mLength:J

    return-wide v0
.end method

.method public getSampleRate()I
    .registers 2

    .line 37
    iget v0, p0, Lorg/fmod/MediaCodec;->mSampleRate:I

    return v0
.end method

.method public init(J)Z
    .registers 10

    .line 42
    const-string v0, "MediaCodec::init : "

    const-string v1, "fmod"

    iput-wide p1, p0, Lorg/fmod/MediaCodec;->mCodecPtr:J

    const/4 p1, 0x0

    .line 95
    :try_start_7
    new-instance p2, Landroid/media/MediaExtractor;

    invoke-direct {p2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object p2, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    .line 96
    new-instance v2, Lorg/fmod/MediaCodec$2DataSource;

    invoke-direct {v2, p0}, Lorg/fmod/MediaCodec$2DataSource;-><init>(Lorg/fmod/MediaCodec;)V

    invoke-virtual {p2, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/media/MediaDataSource;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_16} :catch_dc

    .line 101
    iget-object p2, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p2

    move v2, p1

    :goto_1d
    if-ge v2, p2, :cond_db

    .line 104
    iget-object v3, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 105
    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MediaCodec::init : Format "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v5, "audio/mp4a-latm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 112
    :try_start_59
    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5f} :catch_c1

    .line 116
    iget-object p2, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 117
    iget-object p2, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    invoke-virtual {p2, v3, v0, v0, p1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 118
    iget-object p2, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    .line 120
    iget-object p2, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/fmod/MediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 121
    iget-object p2, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/fmod/MediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 123
    const-string p2, "encoder-delay"

    invoke-virtual {v3, p2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-virtual {v3, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    goto :goto_8d

    :cond_8c
    move p2, p1

    .line 124
    :goto_8d
    const-string v0, "encoder-padding"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 125
    :cond_99
    const-string v0, "durationUs"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 126
    const-string v2, "channel-count"

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/fmod/MediaCodec;->mChannelCount:I

    .line 127
    const-string v2, "sample-rate"

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/fmod/MediaCodec;->mSampleRate:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf423f

    add-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    .line 130
    div-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    int-to-long p1, v0

    .line 131
    iput-wide p1, p0, Lorg/fmod/MediaCodec;->mLength:J

    const/4 p1, 0x1

    return p1

    :catch_c1
    move-exception p2

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_d7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    :cond_db
    return p1

    :catch_dc
    move-exception p2

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public read([BI)I
    .registers 17

    .line 161
    iget-boolean v0, p0, Lorg/fmod/MediaCodec;->mInputFinished:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lorg/fmod/MediaCodec;->mOutputFinished:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    if-ne v0, v1, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 167
    :goto_11
    iget-boolean v3, p0, Lorg/fmod/MediaCodec;->mInputFinished:Z

    const/4 v4, 0x1

    if-nez v3, :cond_4c

    .line 169
    iget-object v3, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    if-ltz v8, :cond_4c

    .line 172
    iget-object v3, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v5, p0, Lorg/fmod/MediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v8

    invoke-virtual {v3, v5, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    if-ltz v10, :cond_3f

    .line 175
    iget-object v7, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 176
    iget-object v3, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_11

    .line 180
    :cond_3f
    iget-object v7, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v11, 0x0

    const/4 v13, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 181
    iput-boolean v4, p0, Lorg/fmod/MediaCodec;->mInputFinished:Z

    goto :goto_11

    .line 191
    :cond_4c
    iget-boolean v3, p0, Lorg/fmod/MediaCodec;->mOutputFinished:Z

    if-nez v3, :cond_ca

    iget v3, p0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    if-ne v3, v1, :cond_ca

    .line 193
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 194
    iget-object v5, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v3, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    if-ltz v5, :cond_7e

    .line 197
    iput v5, p0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    .line 198
    iget-object v6, p0, Lorg/fmod/MediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v5

    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 199
    iget-object v6, p0, Lorg/fmod/MediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v5, v6, v5

    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    goto :goto_c2

    :cond_7e
    const/4 v6, -0x3

    if-ne v5, v6, :cond_8a

    .line 203
    iget-object v5, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/fmod/MediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_c2

    :cond_8a
    const/4 v6, -0x2

    .line 205
    const-string v7, "fmod"

    if-ne v5, v6, :cond_a8

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MediaCodec::read : MediaCodec::dequeueOutputBuffer returned MediaCodec.INFO_OUTPUT_FORMAT_CHANGED "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    :cond_a8
    if-ne v5, v1, :cond_b0

    .line 211
    const-string v5, "MediaCodec::read : MediaCodec::dequeueOutputBuffer returned MediaCodec.INFO_TRY_AGAIN_LATER."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 215
    :cond_b0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "MediaCodec::read : MediaCodec::dequeueOutputBuffer returned "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_c2
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_ca

    .line 220
    iput-boolean v4, p0, Lorg/fmod/MediaCodec;->mOutputFinished:Z

    .line 225
    :cond_ca
    iget v3, p0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    if-eq v3, v1, :cond_f5

    .line 227
    iget-object v0, p0, Lorg/fmod/MediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v3

    .line 229
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    move/from16 v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 230
    invoke-virtual {v0, p1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 232
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_f4

    .line 234
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 235
    iget-object p1, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    iget v0, p0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    invoke-virtual {p1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 236
    iput v1, p0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    :cond_f4
    return v3

    :cond_f5
    return v0
.end method

.method public release()V
    .registers 3

    .line 142
    iget-object v0, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 144
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 145
    iget-object v0, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 146
    iput-object v1, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    .line 149
    :cond_f
    iget-object v0, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_18

    .line 151
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 152
    iput-object v1, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    :cond_18
    return-void
.end method

.method public seek(I)V
    .registers 11

    .line 246
    iget v0, p0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 248
    iget-object v2, p0, Lorg/fmod/MediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 249
    iput v1, p0, Lorg/fmod/MediaCodec;->mCurrentOutputBufferIndex:I

    :cond_11
    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lorg/fmod/MediaCodec;->mInputFinished:Z

    .line 253
    iput-boolean v0, p0, Lorg/fmod/MediaCodec;->mOutputFinished:Z

    .line 254
    iget-object v1, p0, Lorg/fmod/MediaCodec;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V

    int-to-long v1, p1

    const-wide/32 v3, 0xf4240

    mul-long v5, v1, v3

    .line 257
    iget v7, p0, Lorg/fmod/MediaCodec;->mSampleRate:I

    int-to-long v7, v7

    div-long/2addr v5, v7

    .line 258
    iget-object v7, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v5, v6, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 260
    iget-object v0, p0, Lorg/fmod/MediaCodec;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    .line 261
    iget v0, p0, Lorg/fmod/MediaCodec;->mSampleRate:I

    int-to-long v7, v0

    mul-long/2addr v5, v7

    const-wide/32 v7, 0xf423f

    add-long/2addr v5, v7

    div-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 263
    iget v0, p0, Lorg/fmod/MediaCodec;->mChannelCount:I

    int-to-long v3, v0

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    long-to-int v0, v1

    if-gez v0, :cond_63

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaCodec::seek : Seek to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " resulted in position "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fmod"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_63
    const/16 p1, 0x400

    .line 271
    new-array v1, p1, [B

    :goto_67
    if-lez v0, :cond_73

    .line 274
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 275
    invoke-virtual {p0, v1, v2}, Lorg/fmod/MediaCodec;->read([BI)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_67

    :cond_73
    return-void
.end method
