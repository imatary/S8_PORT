.class public Lcom/gdg/recordinglib/v2/audio/MicAudioRecorder;
.super Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;
.source "MicAudioRecorder.java"


# direct methods
.method public constructor <init>(Lcom/gdg/recordinglib/v2/GameRecorder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;-><init>(Lcom/gdg/recordinglib/v2/GameRecorder;)V

    const-string/jumbo v0, "MicAudioRecorder()"

    invoke-static {v0}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private createAudioRecord()V
    .locals 6

    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x6

    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    iget v5, p0, Lcom/gdg/recordinglib/v2/audio/MicAudioRecorder;->mAudioBufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/audio/MicAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method


# virtual methods
.method protected endRecordThread()V
    .locals 0

    return-void
.end method

.method protected initAudioCodec()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v4, 0x1

    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v2, "mime"

    const-string/jumbo v3, "audio/mp4a-latm"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "aac-profile"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "sample-rate"

    const v3, 0xac44

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "channel-count"

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "bitrate"

    const v3, 0x1f400

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "max-input-size"

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    const-string/jumbo v2, "audio/mp4a-latm"

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/gdg/recordinglib/v2/audio/MicAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/MicAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/MicAudioRecorder;->mAudioCallback:Landroid/media/MediaCodec$Callback;

    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/MicAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v2, Lcom/gdg/recordinglib/CircularBuffer;

    sget v3, Lcom/gdg/recordinglib/GameRecorderDefine;->CIRCULAR_BUFFERING_TIME:I

    invoke-direct {v2, v1, v3}, Lcom/gdg/recordinglib/CircularBuffer;-><init>(Landroid/media/MediaFormat;I)V

    iput-object v2, p0, Lcom/gdg/recordinglib/v2/audio/MicAudioRecorder;->mCircularBuffer:Lcom/gdg/recordinglib/CircularBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected initAudioRecord()V
    .locals 5

    const/16 v2, 0x800

    :try_start_0
    iput v2, p0, Lcom/gdg/recordinglib/v2/audio/MicAudioRecorder;->mAudioBufferSize:I

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/audio/MicAudioRecorder;->createAudioRecord()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v2

    iput v2, p0, Lcom/gdg/recordinglib/v2/audio/MicAudioRecorder;->mAudioBufferSize:I

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/audio/MicAudioRecorder;->createAudioRecord()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected initJitterBuffer()V
    .locals 0

    return-void
.end method

.method protected startRecordThread()V
    .locals 0

    return-void
.end method
