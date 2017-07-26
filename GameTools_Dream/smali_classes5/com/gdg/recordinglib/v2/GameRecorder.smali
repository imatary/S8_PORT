.class public Lcom/gdg/recordinglib/v2/GameRecorder;
.super Ljava/lang/Object;
.source "GameRecorder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field static final TAG:Ljava/lang/String;

.field private static mTargetCodec:Ljava/lang/String;


# instance fields
.field private final amplificationMIC:I

.field private amplificationMedia:I

.field public lock:Ljava/lang/Object;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioOption:I

.field private mAudioRecorder:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

.field private mCanIncreaseBuffer:Z

.field private mCircularBuffer:Lcom/gdg/recordinglib/CircularBuffer;

.field public mCircularBufferChangeSizeFence:Ljava/lang/Object;

.field public mCircularBufferFence:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private volatile mIsRecording:Z

.field private mMediaMuxer:Landroid/media/MediaMuxer;

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private volatile mMuxerStarted:Z

.field private mOutputFileName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mVideoBitrate:I

.field private mVideoCodec:Landroid/media/MediaCodec;

.field private mVideoCodecSurface:Landroid/view/Surface;

.field private mVideoFrameRate:I

.field private mVideoSource:I

.field private mVideoTrackIndex:I

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mWidth:I

.field private mWriterHandler:Landroid/os/Handler;

.field videoCodecCallback:Landroid/media/MediaCodec$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gdg/recordinglib/v2/GameRecorder;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "video/avc"

    sput-object v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mTargetCodec:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->amplificationMIC:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->amplificationMedia:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBufferFence:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBufferChangeSizeFence:Ljava/lang/Object;

    new-instance v0, Lcom/gdg/recordinglib/v2/GameRecorder$1;

    invoke-direct {v0, p0}, Lcom/gdg/recordinglib/v2/GameRecorder$1;-><init>(Lcom/gdg/recordinglib/v2/GameRecorder;)V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->videoCodecCallback:Landroid/media/MediaCodec$Callback;

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mWriterHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mCanIncreaseBuffer:Z

    return-void
.end method

.method static synthetic access$000(Lcom/gdg/recordinglib/v2/GameRecorder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMuxerStarted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/gdg/recordinglib/v2/GameRecorder;)Landroid/media/MediaCodec;
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gdg/recordinglib/v2/GameRecorder;)I
    .locals 1

    iget v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoTrackIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/gdg/recordinglib/v2/GameRecorder;I)I
    .locals 0

    iput p1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoTrackIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/gdg/recordinglib/v2/GameRecorder;)Landroid/media/MediaMuxer;
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gdg/recordinglib/v2/GameRecorder;)Lcom/gdg/recordinglib/CircularBuffer;
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBuffer:Lcom/gdg/recordinglib/CircularBuffer;

    return-object v0
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->initEnvironment()V

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->initVideo()V

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->initAudio()V

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->initMuxer()V

    return-void
.end method

.method private initAudio()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GameRecorder initAudio : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioOption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioOption:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioOption:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioRecorder:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    invoke-virtual {v0}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->initAudio()V

    :cond_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/gdg/recordinglib/v2/audio/MicAudioRecorder;

    invoke-direct {v0, p0}, Lcom/gdg/recordinglib/v2/audio/MicAudioRecorder;-><init>(Lcom/gdg/recordinglib/v2/GameRecorder;)V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioRecorder:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;

    invoke-direct {v0, p0}, Lcom/gdg/recordinglib/v2/audio/SystemAudioRecorder;-><init>(Lcom/gdg/recordinglib/v2/GameRecorder;)V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioRecorder:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;

    invoke-direct {v0, p0}, Lcom/gdg/recordinglib/v2/audio/IntegrateAudioRecorder;-><init>(Lcom/gdg/recordinglib/v2/GameRecorder;)V

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioRecorder:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initEnvironment()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoTrackIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMuxerStarted:Z

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->activePlugInRecording()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->deactivePlugInRecording()V

    goto :goto_0
.end method

.method private initMuxer()V
    .locals 4

    invoke-static {}, Lcom/gdg/recordinglib/GameRecorderUtil;->getInstance()Lcom/gdg/recordinglib/GameRecorderUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mOutputFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gdg/recordinglib/GameRecorderUtil;->checkParentDirectoryExist(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mOutputFileName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioOption:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioRecorder:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v2}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->setMediaMuxer(Landroid/media/MediaMuxer;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initVideo()V
    .locals 0

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->initVideoCodec()V

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->initVirtualDisplay()V

    return-void
.end method

.method private initVideoCodec()V
    .locals 6

    const/4 v5, 0x1

    sget-object v2, Lcom/gdg/recordinglib/v2/GameRecorder;->mTargetCodec:Ljava/lang/String;

    iget v3, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mWidth:I

    iget v4, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mHeight:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string/jumbo v2, "bitrate"

    iget v3, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoBitrate:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "frame-rate"

    iget v3, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoFrameRate:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "color-format"

    const v3, 0x7f000789

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v2, "i-frame-interval"

    invoke-virtual {v1, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    sget-object v2, Lcom/gdg/recordinglib/v2/GameRecorder;->mTargetCodec:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoCodec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->videoCodecCallback:Landroid/media/MediaCodec$Callback;

    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoCodecSurface:Landroid/view/Surface;

    new-instance v2, Lcom/gdg/recordinglib/CircularBuffer;

    sget v3, Lcom/gdg/recordinglib/GameRecorderDefine;->CIRCULAR_BUFFERING_TIME:I

    invoke-direct {v2, v1, v3}, Lcom/gdg/recordinglib/CircularBuffer;-><init>(Landroid/media/MediaFormat;I)V

    iput-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBuffer:Lcom/gdg/recordinglib/CircularBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initVirtualDisplay()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "media_projection"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v15}, Landroid/media/projection/MediaProjectionManager;->semGetMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v1, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const-string/jumbo v2, "GameRecorder"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mHeight:I

    const/16 v5, 0xa0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoCodecSurface:Landroid/view/Surface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string/jumbo v13, "ctaifs"

    const-string/jumbo v16, "\u540e\u53f0\u622a\u5c4f"

    const-string/jumbo v1, "[yyyy-MM-dd HH:mm:ss]"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v1, :cond_1

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u540e\u53f0\u622a\u5c4f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u540e\u53f0\u622a\u5c4f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v1, "ctaifs"

    invoke-static {v1, v12}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v14

    const-string/jumbo v1, "Exception occured in initVirtualDisplay"

    invoke-static {v1}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/media/projection/MediaProjectionManager;->semGetMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const-string/jumbo v2, "GameRecorder"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mHeight:I

    const/16 v5, 0xa0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoCodecSurface:Landroid/view/Surface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    goto/16 :goto_0

    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v10, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    goto/16 :goto_1

    :catch_1
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private startRecording()V
    .locals 1

    iget v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioOption:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioRecorder:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    invoke-virtual {v0}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    goto :goto_0
.end method

.method private stopMuxing()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stopVideoRecording()V
    .locals 0

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->stopingVirtualDisplay()V

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->stopingVideoCodec()V

    return-void
.end method

.method private stopingVideoCodec()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stopingVirtualDisplay()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v1}, Landroid/media/projection/MediaProjection;->stop()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public activePlugInRecording()V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->amplificationMedia:I

    return-void
.end method

.method public deactivePlugInRecording()V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->amplificationMedia:I

    return-void
.end method

.method public getAmplificationMIC()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getAmplificationMedia()I
    .locals 1

    iget v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->amplificationMedia:I

    return v0
.end method

.method public getAudioOption()I
    .locals 1

    iget v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioOption:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isMuxerStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMuxerStarted:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mIsRecording:Z

    return v0
.end method

.method public declared-synchronized muxerStart()V
    .locals 2

    const/4 v1, -0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioOption:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoTrackIndex:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    :cond_0
    iget v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioOption:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioRecorder:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    invoke-virtual {v0}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->getAudioTrackIndex()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoTrackIndex:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMuxerStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    const-string/jumbo v0, "muxerStart()"

    invoke-static {v0}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMuxerStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoTrackIndex:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMuxerStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    const-string/jumbo v0, "muxerStart()"

    invoke-static {v0}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mMuxerStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public prepare()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoSource:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "VideoSource is not SURFACE"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public setAudioOption(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GameRecorder : audioOption = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;)V

    iput p1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioOption:I

    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoBitrate:I

    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mOutputFileName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setVideoFrameRate(I)V
    .locals 0

    iput p1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoFrameRate:I

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    iput p1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mWidth:I

    iput p2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mHeight:I

    return-void
.end method

.method public setVideoSource(I)V
    .locals 0

    iput p1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mVideoSource:I

    return-void
.end method

.method public start()V
    .locals 1

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->init()V

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->startRecording()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mIsRecording:Z

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->stopVideoRecording()V

    invoke-virtual {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->stopAudioRecording()V

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/GameRecorder;->stopMuxing()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mIsRecording:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBuffer:Lcom/gdg/recordinglib/CircularBuffer;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopAudioRecording()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mAudioRecorder:Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;

    invoke-virtual {v1}, Lcom/gdg/recordinglib/v2/audio/IAudioRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public writeSampleData(Landroid/media/MediaCodec;IILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 7

    const/4 v6, -0x1

    iget-object v3, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBufferFence:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, -0x1

    :cond_0
    :goto_0
    if-ne v1, v6, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBuffer:Lcom/gdg/recordinglib/CircularBuffer;

    invoke-virtual {v2, p4, p5}, Lcom/gdg/recordinglib/CircularBuffer;->add(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1

    if-ne v1, v6, :cond_0

    iget-boolean v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mCanIncreaseBuffer:Z

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBufferChangeSizeFence:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBuffer:Lcom/gdg/recordinglib/CircularBuffer;

    invoke-virtual {v2}, Lcom/gdg/recordinglib/CircularBuffer;->increaseSize()Z

    move-result v2

    iput-boolean v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mCanIncreaseBuffer:Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mCanIncreaseBuffer:Z

    if-nez v2, :cond_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Blocked until free space is made for track index: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " before adding package with ts: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gdg/recordinglib/logger/SLog;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mCircularBufferFence:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    :cond_2
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {p1, p3, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_1
    iget-object v2, p0, Lcom/gdg/recordinglib/v2/GameRecorder;->mWriterHandler:Landroid/os/Handler;

    new-instance v3, Lcom/gdg/recordinglib/v2/GameRecorder$2;

    invoke-direct {v3, p0, p5, p2}, Lcom/gdg/recordinglib/v2/GameRecorder$2;-><init>(Lcom/gdg/recordinglib/v2/GameRecorder;Landroid/media/MediaCodec$BufferInfo;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_1
    move-exception v0

    sget-object v2, Lcom/gdg/recordinglib/v2/GameRecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaseOutputBuffer :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
