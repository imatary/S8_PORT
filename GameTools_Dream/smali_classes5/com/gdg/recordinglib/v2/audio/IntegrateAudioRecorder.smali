.class public Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;
.super Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;
.source "IntegrateAudioRecorder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

.field mAudioCallback:Landroid/media/MediaCodec$Callback;

.field mReadPosition:I

.field mRecordThread:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;

.field private mSystemAudioBufferSize:I

.field private mSystemAudioRecord:Landroid/media/AudioRecord;

.field mWritePosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gdg/recordinglib/v2/GameRecorder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;-><init>(Lcom/gdg/recordinglib/v2/GameRecorder;)V

    iput v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mReadPosition:I

    iput v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mWritePosition:I

    new-instance v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;

    invoke-direct {v0, p0}, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$1;-><init>(Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;)V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioCallback:Landroid/media/MediaCodec$Callback;

    const-string/jumbo v0, "IntegrateAudioRecorder()"

    invoke-static {v0}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;)Landroid/media/AudioRecord;
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mSystemAudioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;[S[SLjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mixingAudioFrom([S[SLjava/nio/ByteBuffer;)V

    return-void
.end method

.method private createAudioRecord()V
    .locals 6

    const v2, 0xbb80

    const/16 v3, 0xc

    const/4 v4, 0x2

    new-instance v0, Landroid/media/AudioRecord;

    sget v1, Lcom/gdg/recordinglib/GameRecorderDefine$AudioSource;->SEC_BARGEIN_DRIVING:I

    iget v5, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    new-instance v0, Landroid/media/AudioRecord;

    sget v1, Lcom/gdg/recordinglib/GameRecorderDefine$AudioSource;->SYSTEM:I

    iget v5, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mSystemAudioBufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mSystemAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method private mixingAudioFrom([S[SLjava/nio/ByteBuffer;)V
    .locals 6

    iget v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->halfBufferSize:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-short v3, p1, v1

    iget-object v4, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v4}, Lcom/gdg/recordinglib/v2/GameRecorder;->getAmplificationMIC()I

    move-result v4

    mul-int/2addr v3, v4

    aget-short v4, p2, v1

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v5}, Lcom/gdg/recordinglib/v2/GameRecorder;->getAmplificationMedia()I

    move-result v5

    mul-int/2addr v4, v5

    add-int v2, v3, v4

    const/16 v3, 0x7fff

    if-lt v2, v3, :cond_1

    const/16 v2, 0x7fff

    :cond_0
    :goto_1
    int-to-short v3, v2

    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, -0x8000

    if-gt v2, v3, :cond_0

    const/16 v2, -0x8000

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected endRecordThread()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mCond:Z

    return-void
.end method

.method protected initAudioCodec()V
    .locals 6

    const/4 v4, 0x2

    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v2, "mime"

    const-string/jumbo v3, "audio/mp4a-latm"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "aac-profile"

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "sample-rate"

    const v3, 0xbb80

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "channel-count"

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "bitrate"

    const v3, 0x2ee00

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "max-input-size"

    iget v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->maxBufferSize:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    const-string/jumbo v2, "audio/mp4a-latm"

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioCallback:Landroid/media/MediaCodec$Callback;

    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v2, Lcom/gdg/recordinglib/CircularBuffer;

    sget v3, Lcom/gdg/recordinglib/GameRecorderDefine;->CIRCULAR_BUFFERING_TIME:I

    invoke-direct {v2, v1, v3}, Lcom/gdg/recordinglib/CircularBuffer;-><init>(Landroid/media/MediaFormat;I)V

    iput-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mCircularBuffer:Lcom/gdg/recordinglib/CircularBuffer;

    invoke-static {}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->setInappRecordCurrentVolume()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initAudioCodec : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initAudioRecord()V
    .locals 6

    const v5, 0xbb80

    const/16 v4, 0xc

    const/4 v3, 0x2

    :try_start_0
    sget v2, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_BUFFER_SIZE:I

    iput v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBufferSize:I

    sget v2, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_BUFFER_SIZE:I

    iput v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mSystemAudioBufferSize:I

    sget v2, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_BUFFER_SIZE:I

    iput v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->maxBufferSize:I

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->createAudioRecord()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "bufferSizeInBytes too small try again"

    invoke-static {v2}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    :cond_0
    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mSystemAudioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mSystemAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    :cond_1
    invoke-static {v5, v4, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v2

    iput v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBufferSize:I

    invoke-static {v5, v4, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v2

    iput v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mSystemAudioBufferSize:I

    iget v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBufferSize:I

    iput v2, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->maxBufferSize:I

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->createAudioRecord()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initAudioRecord :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initJitterBuffer()V
    .locals 3

    sget v1, Lcom/gdg/recordinglib/GameRecorderDefine;->JITTER_BUFFER_SIZE:I

    new-array v1, v1, [Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    iput-object v1, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/gdg/recordinglib/GameRecorderDefine;->JITTER_BUFFER_SIZE:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioBuffer2Channel:[Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    new-instance v2, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;

    invoke-direct {v2, p0}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder$AudioBuffer2Channel;-><init>(Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mSystemAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    invoke-virtual {p0}, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->startRecordThread()V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method protected startRecordThread()V
    .locals 2

    new-instance v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;

    invoke-direct {v0, p0}, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;-><init>(Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;)V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mRecordThread:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mCond:Z

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mRecordThread:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->setPriority(I)V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mRecordThread:Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;

    invoke-virtual {v0}, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder$AudioRecordThread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mSystemAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mSystemAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;->mAudioCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    return-void
.end method
