.class public Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;
.super Ljava/lang/Object;
.source "MediaRecorderProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    }
.end annotation


# static fields
.field public static final AUDIO_BITRATE_12200:I = 0x2fa8

.field public static final AUDIO_BITRATE_256000:I = 0x3e800

.field public static final AUDIO_CHANNEL_1:I = 0x1

.field public static final AUDIO_CHANNEL_2:I = 0x2

.field public static final AUDIO_SAMPLING_48000:I = 0xbb80

.field public static final AUDIO_SAMPLING_8000:I = 0x1f40

.field public static final CollageVideoBitrateTable:Landroid/util/SparseArray;

.field private static final DEFAULT_AUDIO_BITRATE:I = 0x3e800

.field private static final DEFAULT_AUDIO_CHANNEL:I = 0x2

.field private static final DEFAULT_AUDIO_FORMAT:I = 0x3

.field private static final DEFAULT_AUDIO_SAMPLING:I = 0xbb80

.field private static final DEFAULT_AUDIO_SOURCE:I = 0x5

.field public static final DEFAULT_DURATION_INTERVAL:I = 0x1f4

.field private static final DEFAULT_MAX_DURATION:I = -0x1

.field private static final DEFAULT_OUTPUT_FORMAT:I = 0x2

.field private static final DEFAULT_RECORDING_MODE:I = 0x0

.field private static final DEFAULT_VIDEO_FORMAT:I = 0x2

.field private static final DEFAULT_VIDEO_FRAME_RATE:I = 0x1e

.field private static final DEFAULT_VIDEO_SOURCE:I = 0x1

.field public static final EffectVideoBitrateTable:Landroid/util/SparseArray;

.field public static final I_FRAME_INTERVAL_FOR_30:I = 0x1

.field private static final KB:I = 0x400

.field private static final Kb:I = 0x3e8

.field public static final RECORDING_MODE_FAST_MOTION:I = 0x2

.field public static final RECORDING_MODE_HYPER_MOTION:I = 0x5

.field public static final RECORDING_MODE_NORMAL:I = 0x0

.field public static final RECORDING_MODE_SLOW_MOTION:I = 0x1

.field public static final RECORD_AUTHOR_PARAM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaRecorderProfile"

.field public static final VIDEO_FRAME_RATE_MMS:I = 0xf

.field public static final VideoBitrateTable:Landroid/util/SparseArray;

.field private static final mVideoSizeIntervalTable:Landroid/util/SparseArray;


# instance fields
.field private final mAudioChannels:I

.field private final mAudioEncoder:I

.field private final mAudioEncodingBitrate:I

.field private final mAudioSamplingRate:I

.field private final mAudioSource:I

.field private final mFileSizeInterval:I

.field private final mMaxDuration:I

.field private final mOutputFormat:I

.field private final mRecordingMode:I

.field private final mVideoEncoder:I

.field private final mVideoEncodingBitrate:I

.field private final mVideoFrameRate:I

.field private final mVideoHeight:I

.field private final mVideoSource:I

.field private final mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->VideoBitrateTable:Landroid/util/SparseArray;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->EffectVideoBitrateTable:Landroid/util/SparseArray;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$3;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$3;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->CollageVideoBitrateTable:Landroid/util/SparseArray;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$4;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$4;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoSizeIntervalTable:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mOutputFormat:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$000(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mOutputFormat:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mMaxDuration:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$100(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mMaxDuration:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mRecordingMode:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$200(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mRecordingMode:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoWidth:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$300(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoWidth:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoHeight:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$400(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoHeight:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoEncoder:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$500(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoEncoder:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoFrameRate:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$600(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoFrameRate:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoSource:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$700(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoSource:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$800(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoEncodingBitrate:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mFileSizeInterval:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$900(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mFileSizeInterval:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioEncoder:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$1000(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mAudioEncoder:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioEncodingBitrate:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$1100(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mAudioEncodingBitrate:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioChannels:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$1200(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mAudioChannels:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioSamplingRate:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$1300(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mAudioSamplingRate:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioSource:I
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->access$1400(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mAudioSource:I

    return-void
.end method

.method static synthetic access$1500()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoSizeIntervalTable:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public dumpProfile()V
    .locals 3

    const-string v0, "MediaRecorderProfile"

    const-string v1, "[Dump] camcorder inner profile"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoEncodingBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoFrameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileSizeInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mFileSizeInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mAudioSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mAudioEncodingBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioSampleRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mMaxDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaRecorderProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecordingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mRecordingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAudioChannels()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mAudioChannels:I

    return v0
.end method

.method public getAudioEncoder()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mAudioEncoder:I

    return v0
.end method

.method public getAudioEncodingBitrate()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mAudioEncodingBitrate:I

    return v0
.end method

.method public getAudioSamplingRate()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mAudioSamplingRate:I

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mAudioSource:I

    return v0
.end method

.method public getFileSizeInterval()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mFileSizeInterval:I

    return v0
.end method

.method public getMaxDuration()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mMaxDuration:I

    return v0
.end method

.method public getOutputFormat()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mOutputFormat:I

    return v0
.end method

.method public getRecordingMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mRecordingMode:I

    return v0
.end method

.method public getVideoEncoder()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoEncoder:I

    return v0
.end method

.method public getVideoEncodingBitrate()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoEncodingBitrate:I

    return v0
.end method

.method public getVideoFrameRate()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoFrameRate:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoHeight:I

    return v0
.end method

.method public getVideoSource()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoSource:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoWidth:I

    return v0
.end method
